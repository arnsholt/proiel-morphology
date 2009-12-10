#!/usr/bin/env ruby
require 'yaml'
require 'sfst'

results = {}

normalizer = SFST::CompactTransducer.new('latin-normalization.a')

# Two passes are required: one to record and translate all form,
# feature correspondences, and one to weed out the ones we want.
STDIN.each_line do |l|
  form, lemma, pos, *features = l.chomp.split(',')

  # This is probably a typo.
  lemma.sub!('de_', 'de')

  # Try to do some recovery of the crazy capitalisation they use. The capitalisation
  # of lemmata is usually sane, but that of word forms is not. Forms are either lowercase,
  # Capitalised or UPPERCASE -- the latter with V for U.
  if lemma.capitalize == lemma
    if form.upcase == form
      # All uppercase. Do something about the Vs'. A quick inspection of all
      # entries with a 'V' reveal that they are all 'U's. 
      form.gsub!(/V/, 'U')
    end

    form.capitalize!
  else
    if form.upcase == form
      # All uppercase. All V's are U, except in DEROGAVIT :)
      form.gsub!(/V/, 'U') unless form == 'DEROGAVIT'
    end

    form.downcase!
  end

  # Get rid of 'j'
  #form.gsub!(/j/, 'i')
  #form.gsub!(/J/, 'I')
  #lemma.gsub!(/j/, 'i')
  #lemma.gsub!(/J/, 'I')

  # Remove dashes from lemmata
  lemma.gsub!(/-/, '')

  # Two things are peculiar about POSes: First, if "part" it is either
  # a true participle with the feature "part" repeated later on, or a
  # gerundive with the feature "gerundive", but I see no reason why
  # this cannot be conflated with "verb". Second, there seems to be no
  # distinction between the POSes "adv" and "adverbial".
  pos = "verb" if pos == "part"
  pos = "adv" if pos == "adverbial"

  # Positive adjectives are not marked as such.
  if pos == "adj"
    features << "pos" unless features.include?("comp") or features.include?("superl")
  end

  # Gerundives have passive and present set, but these are bad and/or
  # unnecessary.
  if features.include?("gerundive")
    features.reject! { |s| s == "passive" || s == "present" }
  end

  # Adjectives with superlatives in -illim- are broken: they are
  # tagged as positives.
  if form[/illim(us|ust|e|um|i|o|a|am|ae|i|os|orum|is|as|arum)(que)?$/] and features.include?("pos")
    features.reject! { |s| s == "pos" }
    features << "superl"
  end

  # Fix idiosyncratic things.
  normalizations = normalizer.analyze(form)
  raise "Normalizations of #{form} failed" unless normalizations.length == 1
  form = normalizations[0]

  results[form] ||= []
  results[form] << [lemma, pos, *features].join(',')
end

results.sort.each do |form, values|
  values.uniq.each do |value|
    # Try to remove entries with clitics attached.
    # TODO: eliminate need for -ue
    if form[/^(.*)(que|st|nest|ne|ve)$/] or [/^(.*s)(t)$/]
      base = $1
      next if (results[base] || []).any? { |x| x == value }
    end

    STDOUT.puts [form, value].join(',')
  end
end
