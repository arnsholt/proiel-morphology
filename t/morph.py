from TAP.Simple import *
from xfsm import *

latin = Network.load_from_file("latin.fst")

class Morph:
    formcount = 0

def test(tag, forms):
    gens = latin.apply_down(tag)
    eq_ok(len(gens), len(forms), "Same number of generated forms")
    Morph.formcount += len(forms)
    for form in forms:
        msg = "`%s' is generated from `%s'" % (form, tag)
        try:
            gens.index(form)
            ok(True, msg)
        except:
            ok(False, msg)

def test_hash(tag_base, forms):
    for (tag, forms) in forms.items():
        if isinstance(forms, dict):
            test_hash(tag_base + tag, forms)
        else:
            test(tag_base + tag, forms)

def test_not(tag):
    gens = latin.apply_down(tag)
    eq_ok(len(gens), 0, "Nothing generated from %s" % tag)
    Morph.formcount += 1
