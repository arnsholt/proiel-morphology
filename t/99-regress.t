#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(3)

# A bug in the transformation rules for adverb derivation originally made
# lemma+Adj+Grade+Adv a legal form.
test_not("longus+Adj+Pos+Adv", "longe")
test_not("longus+Adj+Comp+Adv", "longius")
test_not("longus+Adj+Super+Adv", "longissime")
