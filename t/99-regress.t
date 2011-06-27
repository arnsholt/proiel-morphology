use Morph;
use Test::More;

plan(tests => 3);

# A bug in the transformation rules for adverb derivation originally made
# lemma+Adj+Grade+Adv a legal form.
test_not("longus+Adj+Pos+Adv");
test_not("longus+Adj+Comp+Adv");
test_not("longus+Adj+Super+Adv");
