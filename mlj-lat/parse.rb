require 'active_support'

file_names = ARGV

class String
  # Returns the longest prefix that this string and the string +s+ has in common.
  # The length of the prefix can be limited by supplying +max+.
  #
  # Example
  #   "foobar".common_prefix("foobaz")    # "fooba"
  #   "foobar".common_prefix("foobaz", 3) # "foo"
  #   "foobar".common_prefix("bazfoo", 3) # "" 
  #
  def common_prefix(s, max = nil)
    l1, l2 = self.size, s.size
    min = l1 < l2 ? l1 : l2
    min = min < max ? min : max if max
    min.times do |i|
      return self.slice(0, i) if self[i] != s[i]
    end
    return self.slice(0, min)
  end

  def curlify
    '{' + self + '}'
  end
end

# Generates a two-level string suitable for lexica, e.g.
# for "facio" and "fac" it generates "faci:<>o:<>".
def two_level_string(x, y)
  xs, ys = x.split(''), y.split('')

  # We must ensure that there arrays are of equal lengths, otherwise,
  # if x is shorter than y, we may end up with clipped strings.
  xs += [nil] * (ys.length - xs.length) if xs.length < ys.length

  xs.zip(ys).map { |a, b| a == b ? a : "#{a || '<>'}:#{b || '<>'}" }.join
end

class Rule
  def generate(stem)
    stem
  end
end

class SuffixationRule < Rule
  attr_reader :suffix

  def initialize(suffix)
    @suffix = suffix
  end

  def generate(stem)
    stem + @suffix
  end
end

class DesuffixationRule < Rule
  attr_reader :suffix

  def initialize(suffix)
    @suffix = suffix
  end

  def generate(stem)
    raise "Desuffixation rule failed for stem #{stem} with #{suffix}" unless stem[/#{@suffix}$/]
    stem.sub(/#{@suffix}$/, '')
  end
end

class ParadigmClass
  attr_reader :identifier, :summary, :lexicon

  def initialize(identifier, parent_identifier, summary, inherent_features, lemma, lexicon, paradigm, derivation)
    raise ArgumentError, 'missing identifier' unless identifier
    raise ArgumentError, 'invalid identifier' unless identifier.is_a?(String) or identifier.is_a?(Symbol)
    raise ArgumentError, 'invalid parent identifier' unless parent_identifier.is_a?(String) or parent_identifier.is_a?(Symbol) or parent_identifier.is_a?(NilClass)

    @identifier = identifier.to_sym
    @parent_identifier = parent_identifier ? parent_identifier.to_sym : nil
    @summary = summary
    @inherent_features = inherent_features || []
    @lemma = lemma
    @derivation = derivation
    @lexicon = lexicon || []
    @lexicon.sort!
    @lexicon.uniq!

    process_paradigm(lemma, paradigm) unless paradigm.empty?

    # Register ourself
    @@paradigms ||= {}
    raise ArgumentError, 'paradigm already exists' if @@paradigms.has_key?(identifier)
    @@paradigms[@identifier] = self

    # Look up our parent
    if @parent_identifier
      raise ArgumentError, "parent paradigm #{@parent_identifier} does not exist" unless @@paradigms.has_key?(@parent_identifier)
      @parent = @@paradigms[@parent_identifier]
    end
  end

  private

  def process_paradigm(lemma, paradigm)
    ps_by_form = {}

    # Start by reducing syncretisms
    paradigm.each do |features, forms|
      forms.split(/\//).each do |form|
        ps_by_form[form] ||= []
        ps_by_form[form] << features
        ps_by_form[form].uniq!
      end
    end

    # Try to determine how the forms are related

    # Look for a common prefix.
    prefix = ps_by_form.keys.inject(lemma) { |s, t| s.common_prefix(t) }

    raise "Unable to find a common prefix for #{lemma}" unless prefix and prefix != ''

    @stemmer = DesuffixationRule.new(lemma.sub(/^#{prefix}/, ''))

    @rules = ps_by_form.map do |form, feature_sets|
      [SuffixationRule.new(form.sub(/^#{prefix}/, '')), feature_sets]
    end
  end

  public

  def self.all
    @@paradigms.values
  end

  def self.generate_all
    self.all.map(&:generate_all).flatten
  end

  def self.write_all_sfst(f)
    self.all.each do |p|
      p.write_sfst(f)
    end
    f.puts(self.all.reject { |p| p.lexicon.empty? }.map { |p| "$#{p.identifier}$" }.join(" | "))
  end

  def inspect
    "#<ParadigmClass:%s>" % [identifier]
  end

  def write_sfst(f)
    base_name = identifier.to_s
    file_name = base_name + ".lex"

    unless lexicon.empty?
      #STDERR.puts "Generating SFST lexicon for #{identifier}..."
      File.open(file_name, "w") do |lex_f|
        lexicon.map do |lemma|
          if lemma[/:/]
            lemma, derivative_lemma = lemma.split /:/
            lex_f.puts two_level_string(lemma, stemmer.generate(derivative_lemma + (@derivation || '')))
          else
            lex_f.puts two_level_string(lemma, stemmer.generate(lemma + (@derivation || '')))
          end
        end
      end

      x = rules.map do |rule, feature_set|
        feature_set.map do |features|
          "{#{(inherent_features + features).map { |feature| "<#{feature}>" }}}:{#{rule.suffix}}"
        end
      end.flatten.join(' | ')

      f.puts "$#{base_name}$ = \"#{file_name}\" (" + x + ")"
    end
  end

  def generate_all
    @lexicon.map { |lemma| generate(lemma) }.flatten
  end

  protected

  def stemmer
    @stemmer || (@parent ? @parent.stemmer : nil)
  end

  def rules
    @rules || (@parent ? @parent.rules : nil)
  end

  public

  def generate(lemma)
    stem = stemmer.generate(lemma)
    rules.map do |rule, feature_set|
      feature_set.map do |features|
        { :lemma => lemma, :form => rule.generate(stem), :features => inherent_features + features }
      end
    end.flatten
  end

  def inherent_features
    @parent ? @parent.inherent_features + @inherent_features : @inherent_features
  end

  def inherent_features_s
    inherent_features.map { |f| "<#{f}>" }.join
  end

  def lexicon_s
    lexicon.join(', ')
  end
end

def parse_definitions(file_names)
  current_chunk = nil
  definition_chunks = []

  file_names.each do |file_name|
    File.open(file_name) do |f|
      # Read definition file an split into definition chunks, each
      # separated by one or more spaces. Also remove any comments.
      f.each_line do |l|
        l.chomp!
        l.sub!(/#.*$/, '')
        l.rstrip!

        next if l == ''

        if l == 'END'
          raise "Invalid chunk" unless current_chunk
          definition_chunks << current_chunk
          current_chunk = nil
        else
          l.gsub!(/\s+/, ' ')
          if l[/^ /]
            raise "Invalid chunk" unless current_chunk and current_chunk.length > 0
            current_chunk[-1] = "#{current_chunk.last};#{l}"
          else
            current_chunk ||= []
            current_chunk << l
          end
        end
      end
    end
  end

  definition_chunks.each do |chunk|
    parse_definition_chunk(chunk)
  end
end

def parse_definition_chunk(chunk)
  chunk_data = {}

  chunk.each do |l|
    case l
    when /^(ID|SUMMARY|INHERENT|GROUP|LEMMA|PARADIGM|LEXICON|LEXICONFILE|DERIVATION) (.*)$/
      symbol = $1.downcase.to_sym
      chunk_data[symbol] = $2
    else
      raise "Invalid chunk command #{l}"
    end
  end

  chunk_data[:inherent] ||= ''
  chunk_data[:lexicon] ||= ''
  chunk_data[:paradigm] ||= ''
  chunk_data[:lexiconfile] ||= ''

  # Parse the lexicon
  lexicon = chunk_data[:lexicon].split(/\s*,\s*/)

  chunk_data[:lexiconfile].split(/\s*,\s*/).each do |file_name|
    File.open(file_name) do |f|
      f.each_line do |l|
        l.chomp!
        lexicon << l
      end
    end
  end

  ParadigmClass.new(chunk_data[:id], chunk_data[:group], chunk_data[:summary],
                    parse_features(chunk_data[:inherent]),
                    chunk_data[:lemma],
                    lexicon,
                    parse_paradigm(chunk_data[:paradigm]),
                    chunk_data[:derivation])
end

def parse_features(s)
  s.scan(/<([\/\w]+)>/).map { |f| f[0].to_sym }
end

def parse_paradigm(s)
  x = []
  s.split(/\s*;\s*/).each do |entry|
    features, form = entry.split(/\s+/)
    cross_features(features).each do |features|
      x << [parse_features(features), form]
    end
  end
  x
end

# Example:
#  <d><e><f/g><h/i>
#
# <d><e><f><h>
# <d><e><g><h>
# <d><e><f><i>
# <d><e><g><i>
def cross_features(t)
  stem, *alts = t.split(/\//)
  out = [stem]
  alts.each do |alt|
    new = out.map { |x| y = x.dup; y[-1, 1] = alt; y }
    out = out.map { |x| x + alt[1, alt.length - 1] }
    out += new
  end
  out
end

parse_definitions(file_names)

#--------------------------------------------------
# ParadigmClass.all.each do |p|
#   puts "#{p.identifier}: #{p.inherent_features_s}" unless p.inherent_features.empty?
# end
# 
# ParadigmClass.all.each do |p|
#   puts "#{p.identifier}: #{p.lexicon_s}" unless p.lexicon.empty?
# end
#-------------------------------------------------- 

#x = ParadigmClass.generate_all.map do |entry|
#  entry[:features].map { |f| "<#{f}>:<>" }.join(' ') + "{#{entry[:lemma]}}:{#{entry[:form]}} " 
#end.join("|\\\n")
#puts x

File.open("lat.fst", "w") do |f|
  ParadigmClass.write_all_sfst(f)
end
