#!/usr/bin/env python

from morph import *
from TAP.Simple import *

plan(
    24*12 # Number of tests per noun (24) * number of nouns
  + 1 # Fudge for one additional test in filius
  + 222*5 # Number of tests per adjective (216) * number of adjectives
)

# BEGIN: Nouns
# D1
test_hash("rosa+Noun+Fem", {
    '+Nom+Sg': ['rosa'],
    '+Voc+Sg': ['rosa'],
    '+Acc+Sg': ['rosam'],
    '+Gen+Sg': ['rosae'],
    '+Dat+Sg': ['rosae'],
    '+Abl+Sg': ['rosa'],

    '+Nom+Pl': ['rosae'],
    '+Voc+Pl': ['rosae'],
    '+Acc+Pl': ['rosas'],
    '+Gen+Pl': ['rosarum'],
    '+Dat+Pl': ['rosis'],
    '+Abl+Pl': ['rosis'],
})

# D2
test_hash("dominus+Noun+Masc", {
    '+Nom+Sg': ['dominus'],
    '+Voc+Sg': ['domine'],
    '+Acc+Sg': ['dominum'],
    '+Gen+Sg': ['domini'],
    '+Dat+Sg': ['domino'],
    '+Abl+Sg': ['domino'],

    '+Nom+Pl': ['domini'],
    '+Voc+Pl': ['domini'],
    '+Acc+Pl': ['dominos'],
    '+Gen+Pl': ['dominorum'],
    '+Dat+Pl': ['dominis'],
    '+Abl+Pl': ['dominis'],
})

test_hash('numerus+Noun+Masc', {
    '+Nom+Sg': ['numerus'],
    '+Voc+Sg': ['numere'],
    '+Acc+Sg': ['numerum'],
    '+Gen+Sg': ['numeri'],
    '+Dat+Sg': ['numero'],
    '+Abl+Sg': ['numero'],

    '+Nom+Pl': ['numeri'],
    '+Voc+Pl': ['numeri'],
    '+Acc+Pl': ['numeros'],
    '+Gen+Pl': ['numerorum'],
    '+Dat+Pl': ['numeris'],
    '+Abl+Pl': ['numeris'],
})

test_hash('filius+Noun+Masc', {
    '+Nom+Sg': ['filius'],
    '+Voc+Sg': ['fili'],
    '+Acc+Sg': ['filium'],
    '+Gen+Sg': ['filii', 'fili'],
    '+Dat+Sg': ['filio'],
    '+Abl+Sg': ['filio'],

    '+Nom+Pl': ['filii'],
    '+Voc+Pl': ['filii'],
    '+Acc+Pl': ['filios'],
    '+Gen+Pl': ['filiorum'],
    '+Dat+Pl': ['filiis'], # Add `filis'?
    '+Abl+Pl': ['filiis'], # Add `filis'?
})

test_hash('puer+Noun+Masc', {
    '+Nom+Sg': ['puer'],
    '+Voc+Sg': ['puer'],
    '+Acc+Sg': ['puerum'],
    '+Gen+Sg': ['pueri'],
    '+Dat+Sg': ['puero'],
    '+Abl+Sg': ['puero'],

    '+Nom+Pl': ['pueri'],
    '+Voc+Pl': ['pueri'],
    '+Acc+Pl': ['pueros'],
    '+Gen+Pl': ['puerorum'],
    '+Dat+Pl': ['pueris'],
    '+Abl+Pl': ['pueris'],
})

test_hash('ager+Noun+Masc', {
    '+Nom+Sg': ['ager'],
    '+Voc+Sg': ['ager'],
    '+Acc+Sg': ['agrum'],
    '+Gen+Sg': ['agri'],
    '+Dat+Sg': ['agro'],
    '+Abl+Sg': ['agro'],

    '+Nom+Pl': ['agri'],
    '+Voc+Pl': ['agri'],
    '+Acc+Pl': ['agros'],
    '+Gen+Pl': ['agrorum'],
    '+Dat+Pl': ['agris'],
    '+Abl+Pl': ['agris'],
})

test_hash('bellum+Noun+Neut', {
    '+Nom+Sg': ['bellum'],
    '+Voc+Sg': ['bellum'],
    '+Acc+Sg': ['bellum'],
    '+Gen+Sg': ['belli'],
    '+Dat+Sg': ['bello'],
    '+Abl+Sg': ['bello'],

    '+Nom+Pl': ['bella'],
    '+Voc+Pl': ['bella'],
    '+Acc+Pl': ['bella'],
    '+Gen+Pl': ['bellorum'],
    '+Dat+Pl': ['bellis'],
    '+Abl+Pl': ['bellis'],
})

# D3
test_hash('rex+Noun+Masc', {
    '+Nom+Sg': ['rex'],
    '+Voc+Sg': ['rex'],
    '+Acc+Sg': ['regem'],
    '+Gen+Sg': ['regis'],
    '+Dat+Sg': ['regi'],
    '+Abl+Sg': ['rege'],

    '+Nom+Pl': ['reges'],
    '+Voc+Pl': ['reges'],
    '+Acc+Pl': ['reges'],
    '+Gen+Pl': ['regum'],
    '+Dat+Pl': ['regibus'],
    '+Abl+Pl': ['regibus'],
})

test_hash('corpus+Noun+Neut', {
    '+Nom+Sg': ['corpus'],
    '+Voc+Sg': ['corpus'],
    '+Acc+Sg': ['corpus'],
    '+Gen+Sg': ['corporis'],
    '+Dat+Sg': ['corpori'],
    '+Abl+Sg': ['corpore'],

    '+Nom+Pl': ['corpora'],
    '+Voc+Pl': ['corpora'],
    '+Acc+Pl': ['corpora'],
    '+Gen+Pl': ['corporum'],
    '+Dat+Pl': ['corporibus'],
    '+Abl+Pl': ['corporibus'],
})

# D4
test_hash('fructus+Noun+Masc', {
    '+Nom+Sg': ['fructus'],
    '+Voc+Sg': ['fructus'],
    '+Acc+Sg': ['fructum'],
    '+Gen+Sg': ['fructus'],
    '+Dat+Sg': ['fructui'],
    '+Abl+Sg': ['fructu'],

    '+Nom+Pl': ['fructus'],
    '+Voc+Pl': ['fructus'],
    '+Acc+Pl': ['fructus'],
    '+Gen+Pl': ['fructuum'],
    '+Dat+Pl': ['fructibus'],
    '+Abl+Pl': ['fructibus'],
})

test_hash('cornus+Noun+Neut', {
    '+Nom+Sg': ['cornus'],
    '+Voc+Sg': ['cornus'],
    '+Acc+Sg': ['cornus'],
    '+Gen+Sg': ['cornus'],
    '+Dat+Sg': ['cornui'],
    '+Abl+Sg': ['cornu'],

    '+Nom+Pl': ['cornua'],
    '+Voc+Pl': ['cornua'],
    '+Acc+Pl': ['cornua'],
    '+Gen+Pl': ['cornuum'],
    '+Dat+Pl': ['cornibus'],
    '+Abl+Pl': ['cornibus'],
})

# D5
test_hash('res+Noun+Fem', {
    '+Nom+Sg': ['res'],
    '+Voc+Sg': ['res'],
    '+Acc+Sg': ['rem'],
    '+Gen+Sg': ['rei'],
    '+Dat+Sg': ['rei'],
    '+Abl+Sg': ['re'],

    '+Nom+Pl': ['res'],
    '+Voc+Pl': ['res'],
    '+Acc+Pl': ['res'],
    '+Gen+Pl': ['rerum'],
    '+Dat+Pl': ['rebus'],
    '+Abl+Pl': ['rebus'],
})

""" 16 lines:

test_hash('+Noun', {
    '+Nom+Sg': [''],
    '+Voc+Sg': [''],
    '+Acc+Sg': [''],
    '+Gen+Sg': [''],
    '+Dat+Sg': [''],
    '+Abl+Sg': [''],

    '+Nom+Pl': [''],
    '+Voc+Pl': [''],
    '+Acc+Pl': [''],
    '+Gen+Pl': [''],
    '+Dat+Pl': [''],
    '+Abl+Pl': [''],
})
"""
# END: Nouns

# BEGIN: Adjectives
# Thematics
test_hash('longus', {
    '+Adj': {
        '+Pos': {
            '+Masc': {
                '+Nom+Sg': ['longus'],
                '+Voc+Sg': ['longe'],
                '+Acc+Sg': ['longum'],
                '+Gen+Sg': ['longi'],
                '+Dat+Sg': ['longo'],
                '+Abl+Sg': ['longo'],

                '+Nom+Pl': ['longi'],
                '+Voc+Pl': ['longi'],
                '+Acc+Pl': ['longos'],
                '+Gen+Pl': ['longorum'],
                '+Dat+Pl': ['longis'],
                '+Abl+Pl': ['longis'],
            },
            '+Fem': {
                '+Nom+Sg': ['longa'],
                '+Voc+Sg': ['longa'],
                '+Acc+Sg': ['longam'],
                '+Gen+Sg': ['longae'],
                '+Dat+Sg': ['longae'],
                '+Abl+Sg': ['longa'],

                '+Nom+Pl': ['longae'],
                '+Voc+Pl': ['longae'],
                '+Acc+Pl': ['longas'],
                '+Gen+Pl': ['longarum'],
                '+Dat+Pl': ['longis'],
                '+Abl+Pl': ['longis'],
            },
            '+Neut': {
                '+Nom+Sg': ['longum'],
                '+Voc+Sg': ['longum'],
                '+Acc+Sg': ['longum'],
                '+Gen+Sg': ['longi'],
                '+Dat+Sg': ['longo'],
                '+Abl+Sg': ['longo'],

                '+Nom+Pl': ['longa'],
                '+Voc+Pl': ['longa'],
                '+Acc+Pl': ['longa'],
                '+Gen+Pl': ['longorum'],
                '+Dat+Pl': ['longis'],
                '+Abl+Pl': ['longis'],
            },
        },
        '+Comp': {
            '+Masc': {
                '+Nom+Sg': ['longior'],
                '+Voc+Sg': ['longior'],
                '+Acc+Sg': ['longiorem'],
                '+Gen+Sg': ['longioris'],
                '+Dat+Sg': ['longiori'],
                '+Abl+Sg': ['longiore'],

                '+Nom+Pl': ['longiores'],
                '+Voc+Pl': ['longiores'],
                '+Acc+Pl': ['longiores'],
                '+Gen+Pl': ['longiorum'],
                '+Dat+Pl': ['longioribus'],
                '+Abl+Pl': ['longioribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['longior'],
                '+Voc+Sg': ['longior'],
                '+Acc+Sg': ['longiorem'],
                '+Gen+Sg': ['longioris'],
                '+Dat+Sg': ['longiori'],
                '+Abl+Sg': ['longiore'],

                '+Nom+Pl': ['longiores'],
                '+Voc+Pl': ['longiores'],
                '+Acc+Pl': ['longiores'],
                '+Gen+Pl': ['longiorum'],
                '+Dat+Pl': ['longioribus'],
                '+Abl+Pl': ['longioribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['longius'],
                '+Voc+Sg': ['longius'],
                '+Acc+Sg': ['longius'],
                '+Gen+Sg': ['longioris'],
                '+Dat+Sg': ['longiori'],
                '+Abl+Sg': ['longiore'],

                '+Nom+Pl': ['longiora'],
                '+Voc+Pl': ['longiora'],
                '+Acc+Pl': ['longiora'],
                '+Gen+Pl': ['longiorum'],
                '+Dat+Pl': ['longioribus'],
                '+Abl+Pl': ['longioribus'],
            },
        },
        '+Super': {
            '+Masc': {
                '+Nom+Sg': ['longissimus'],
                '+Voc+Sg': ['longissime'],
                '+Acc+Sg': ['longissimum'],
                '+Gen+Sg': ['longissimi'],
                '+Dat+Sg': ['longissimo'],
                '+Abl+Sg': ['longissimo'],

                '+Nom+Pl': ['longissimi'],
                '+Voc+Pl': ['longissimi'],
                '+Acc+Pl': ['longissimos'],
                '+Gen+Pl': ['longissimorum'],
                '+Dat+Pl': ['longissimis'],
                '+Abl+Pl': ['longissimis'],
            },
            '+Fem': {
                '+Nom+Sg': ['longissima'],
                '+Voc+Sg': ['longissima'],
                '+Acc+Sg': ['longissimam'],
                '+Gen+Sg': ['longissimae'],
                '+Dat+Sg': ['longissimae'],
                '+Abl+Sg': ['longissima'],

                '+Nom+Pl': ['longissimae'],
                '+Voc+Pl': ['longissimae'],
                '+Acc+Pl': ['longissimas'],
                '+Gen+Pl': ['longissimarum'],
                '+Dat+Pl': ['longissimis'],
                '+Abl+Pl': ['longissimis'],
            },
            '+Neut': {
                '+Nom+Sg': ['longissimum'],
                '+Voc+Sg': ['longissimum'],
                '+Acc+Sg': ['longissimum'],
                '+Gen+Sg': ['longissimi'],
                '+Dat+Sg': ['longissimo'],
                '+Abl+Sg': ['longissimo'],

                '+Nom+Pl': ['longissima'],
                '+Voc+Pl': ['longissima'],
                '+Acc+Pl': ['longissima'],
                '+Gen+Pl': ['longissimorum'],
                '+Dat+Pl': ['longissimis'],
                '+Abl+Pl': ['longissimis'],
            },
        },
    },
    '+Adv': {
        '+Pos':   ['longe'],
        '+Comp':  ['longius'],
        '+Super': ['longissime'],
    },
})

test_hash('pulcher', {
    '+Adj': {
        '+Pos': {
            '+Masc': {
                '+Nom+Sg': ['pulcher'],
                '+Voc+Sg': ['pulcher'],
                '+Acc+Sg': ['pulchrum'],
                '+Gen+Sg': ['pulchri'],
                '+Dat+Sg': ['pulchro'],
                '+Abl+Sg': ['pulchro'],

                '+Nom+Pl': ['pulchri'],
                '+Voc+Pl': ['pulchri'],
                '+Acc+Pl': ['pulchros'],
                '+Gen+Pl': ['pulchrorum'],
                '+Dat+Pl': ['pulchris'],
                '+Abl+Pl': ['pulchris'],
            },
            '+Fem': {
                '+Nom+Sg': ['pulchra'],
                '+Voc+Sg': ['pulchra'],
                '+Acc+Sg': ['pulchram'],
                '+Gen+Sg': ['pulchrae'],
                '+Dat+Sg': ['pulchrae'],
                '+Abl+Sg': ['pulchra'],

                '+Nom+Pl': ['pulchrae'],
                '+Voc+Pl': ['pulchrae'],
                '+Acc+Pl': ['pulchras'],
                '+Gen+Pl': ['pulchrarum'],
                '+Dat+Pl': ['pulchris'],
                '+Abl+Pl': ['pulchris'],
            },
            '+Neut': {
                '+Nom+Sg': ['pulchrum'],
                '+Voc+Sg': ['pulchrum'],
                '+Acc+Sg': ['pulchrum'],
                '+Gen+Sg': ['pulchri'],
                '+Dat+Sg': ['pulchro'],
                '+Abl+Sg': ['pulchro'],

                '+Nom+Pl': ['pulchra'],
                '+Voc+Pl': ['pulchra'],
                '+Acc+Pl': ['pulchra'],
                '+Gen+Pl': ['pulchrorum'],
                '+Dat+Pl': ['pulchris'],
                '+Abl+Pl': ['pulchris'],
            },
        },
        '+Comp': {
            '+Masc': {
                '+Nom+Sg': ['pulchrior'],
                '+Voc+Sg': ['pulchrior'],
                '+Acc+Sg': ['pulchriorem'],
                '+Gen+Sg': ['pulchrioris'],
                '+Dat+Sg': ['pulchriori'],
                '+Abl+Sg': ['pulchriore'],

                '+Nom+Pl': ['pulchriores'],
                '+Voc+Pl': ['pulchriores'],
                '+Acc+Pl': ['pulchriores'],
                '+Gen+Pl': ['pulchriorum'],
                '+Dat+Pl': ['pulchrioribus'],
                '+Abl+Pl': ['pulchrioribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['pulchrior'],
                '+Voc+Sg': ['pulchrior'],
                '+Acc+Sg': ['pulchriorem'],
                '+Gen+Sg': ['pulchrioris'],
                '+Dat+Sg': ['pulchriori'],
                '+Abl+Sg': ['pulchriore'],

                '+Nom+Pl': ['pulchriores'],
                '+Voc+Pl': ['pulchriores'],
                '+Acc+Pl': ['pulchriores'],
                '+Gen+Pl': ['pulchriorum'],
                '+Dat+Pl': ['pulchrioribus'],
                '+Abl+Pl': ['pulchrioribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['pulchrius'],
                '+Voc+Sg': ['pulchrius'],
                '+Acc+Sg': ['pulchrius'],
                '+Gen+Sg': ['pulchrioris'],
                '+Dat+Sg': ['pulchriori'],
                '+Abl+Sg': ['pulchriore'],

                '+Nom+Pl': ['pulchriora'],
                '+Voc+Pl': ['pulchriora'],
                '+Acc+Pl': ['pulchriora'],
                '+Gen+Pl': ['pulchriorum'],
                '+Dat+Pl': ['pulchrioribus'],
                '+Abl+Pl': ['pulchrioribus'],
            },
        },
        '+Super': {
            '+Masc': {
                '+Nom+Sg': ['pulcherrimus'],
                '+Voc+Sg': ['pulcherrime'],
                '+Acc+Sg': ['pulcherrimum'],
                '+Gen+Sg': ['pulcherrimi'],
                '+Dat+Sg': ['pulcherrimo'],
                '+Abl+Sg': ['pulcherrimo'],

                '+Nom+Pl': ['pulcherrimi'],
                '+Voc+Pl': ['pulcherrimi'],
                '+Acc+Pl': ['pulcherrimos'],
                '+Gen+Pl': ['pulcherrimorum'],
                '+Dat+Pl': ['pulcherrimis'],
                '+Abl+Pl': ['pulcherrimis'],
            },
            '+Fem': {
                '+Nom+Sg': ['pulcherrima'],
                '+Voc+Sg': ['pulcherrima'],
                '+Acc+Sg': ['pulcherrimam'],
                '+Gen+Sg': ['pulcherrimae'],
                '+Dat+Sg': ['pulcherrimae'],
                '+Abl+Sg': ['pulcherrima'],

                '+Nom+Pl': ['pulcherrimae'],
                '+Voc+Pl': ['pulcherrimae'],
                '+Acc+Pl': ['pulcherrimas'],
                '+Gen+Pl': ['pulcherrimarum'],
                '+Dat+Pl': ['pulcherrimis'],
                '+Abl+Pl': ['pulcherrimis'],
            },
            '+Neut': {
                '+Nom+Sg': ['pulcherrimum'],
                '+Voc+Sg': ['pulcherrimum'],
                '+Acc+Sg': ['pulcherrimum'],
                '+Gen+Sg': ['pulcherrimi'],
                '+Dat+Sg': ['pulcherrimo'],
                '+Abl+Sg': ['pulcherrimo'],

                '+Nom+Pl': ['pulcherrima'],
                '+Voc+Pl': ['pulcherrima'],
                '+Acc+Pl': ['pulcherrima'],
                '+Gen+Pl': ['pulcherrimorum'],
                '+Dat+Pl': ['pulcherrimis'],
                '+Abl+Pl': ['pulcherrimis'],
            },
        },
    },
    '+Adv': {
        '+Pos':   ['pulchre'],
        '+Comp':  ['pulchrius'],
        '+Super': ['pulcherrime'],
    },
})

test_hash('acer', {
    '+Adj': {
        '+Pos': {
            '+Masc': {
                '+Nom+Sg': ['acer'],
                '+Voc+Sg': ['acer'],
                '+Acc+Sg': ['acrem'],
                '+Gen+Sg': ['acris'],
                '+Dat+Sg': ['acri'],
                '+Abl+Sg': ['acri'],

                '+Nom+Pl': ['acres'],
                '+Voc+Pl': ['acres'],
                '+Acc+Pl': ['acres'],
                '+Gen+Pl': ['acrium'],
                '+Dat+Pl': ['acribus'],
                '+Abl+Pl': ['acribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['acris'],
                '+Voc+Sg': ['acris'],
                '+Acc+Sg': ['acrem'],
                '+Gen+Sg': ['acris'],
                '+Dat+Sg': ['acri'],
                '+Abl+Sg': ['acri'],

                '+Nom+Pl': ['acres'],
                '+Voc+Pl': ['acres'],
                '+Acc+Pl': ['acres'],
                '+Gen+Pl': ['acrium'],
                '+Dat+Pl': ['acribus'],
                '+Abl+Pl': ['acribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['acre'],
                '+Voc+Sg': ['acre'],
                '+Acc+Sg': ['acre'],
                '+Gen+Sg': ['acris'],
                '+Dat+Sg': ['acri'],
                '+Abl+Sg': ['acri'],

                '+Nom+Pl': ['acria'],
                '+Voc+Pl': ['acria'],
                '+Acc+Pl': ['acria'],
                '+Gen+Pl': ['acrium'],
                '+Dat+Pl': ['acribus'],
                '+Abl+Pl': ['acribus'],
            },
        },
        '+Comp': {
            '+Masc': {
                '+Nom+Sg': ['acrior'],
                '+Voc+Sg': ['acrior'],
                '+Acc+Sg': ['acriorem'],
                '+Gen+Sg': ['acrioris'],
                '+Dat+Sg': ['acriori'],
                '+Abl+Sg': ['acriore'],

                '+Nom+Pl': ['acriores'],
                '+Voc+Pl': ['acriores'],
                '+Acc+Pl': ['acriores'],
                '+Gen+Pl': ['acriorum'],
                '+Dat+Pl': ['acrioribus'],
                '+Abl+Pl': ['acrioribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['acrior'],
                '+Voc+Sg': ['acrior'],
                '+Acc+Sg': ['acriorem'],
                '+Gen+Sg': ['acrioris'],
                '+Dat+Sg': ['acriori'],
                '+Abl+Sg': ['acriore'],

                '+Nom+Pl': ['acriores'],
                '+Voc+Pl': ['acriores'],
                '+Acc+Pl': ['acriores'],
                '+Gen+Pl': ['acriorum'],
                '+Dat+Pl': ['acrioribus'],
                '+Abl+Pl': ['acrioribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['acrius'],
                '+Voc+Sg': ['acrius'],
                '+Acc+Sg': ['acrius'],
                '+Gen+Sg': ['acrioris'],
                '+Dat+Sg': ['acriori'],
                '+Abl+Sg': ['acriore'],

                '+Nom+Pl': ['acriora'],
                '+Voc+Pl': ['acriora'],
                '+Acc+Pl': ['acriora'],
                '+Gen+Pl': ['acriorum'],
                '+Dat+Pl': ['acrioribus'],
                '+Abl+Pl': ['acrioribus'],
            },
        },
        '+Super': {
            '+Masc': {
                '+Nom+Sg': ['acerrimus'],
                '+Voc+Sg': ['acerrime'],
                '+Acc+Sg': ['acerrimum'],
                '+Gen+Sg': ['acerrimi'],
                '+Dat+Sg': ['acerrimo'],
                '+Abl+Sg': ['acerrimo'],

                '+Nom+Pl': ['acerrimi'],
                '+Voc+Pl': ['acerrimi'],
                '+Acc+Pl': ['acerrimos'],
                '+Gen+Pl': ['acerrimorum'],
                '+Dat+Pl': ['acerrimis'],
                '+Abl+Pl': ['acerrimis'],
            },
            '+Fem': {
                '+Nom+Sg': ['acerrima'],
                '+Voc+Sg': ['acerrima'],
                '+Acc+Sg': ['acerrimam'],
                '+Gen+Sg': ['acerrimae'],
                '+Dat+Sg': ['acerrimae'],
                '+Abl+Sg': ['acerrima'],

                '+Nom+Pl': ['acerrimae'],
                '+Voc+Pl': ['acerrimae'],
                '+Acc+Pl': ['acerrimas'],
                '+Gen+Pl': ['acerrimarum'],
                '+Dat+Pl': ['acerrimis'],
                '+Abl+Pl': ['acerrimis'],
            },
            '+Neut': {
                '+Nom+Sg': ['acerrimum'],
                '+Voc+Sg': ['acerrimum'],
                '+Acc+Sg': ['acerrimum'],
                '+Gen+Sg': ['acerrimi'],
                '+Dat+Sg': ['acerrimo'],
                '+Abl+Sg': ['acerrimo'],

                '+Nom+Pl': ['acerrima'],
                '+Voc+Pl': ['acerrima'],
                '+Acc+Pl': ['acerrima'],
                '+Gen+Pl': ['acerrimorum'],
                '+Dat+Pl': ['acerrimis'],
                '+Abl+Pl': ['acerrimis'],
            },
        },
    },
    '+Adv': {
        '+Pos':   ['acriter'],
        '+Comp':  ['acrius'],
        '+Super': ['acerrime'],
    },
})

test_hash('brevis', {
    '+Adj': {
        '+Pos': {
            '+Masc': {
                '+Nom+Sg': ['brevis'],
                '+Voc+Sg': ['brevis'],
                '+Acc+Sg': ['brevem'],
                '+Gen+Sg': ['brevis'],
                '+Dat+Sg': ['brevi'],
                '+Abl+Sg': ['brevi'],

                '+Nom+Pl': ['breves'],
                '+Voc+Pl': ['breves'],
                '+Acc+Pl': ['breves'],
                '+Gen+Pl': ['brevium'],
                '+Dat+Pl': ['brevibus'],
                '+Abl+Pl': ['brevibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['brevis'],
                '+Voc+Sg': ['brevis'],
                '+Acc+Sg': ['brevem'],
                '+Gen+Sg': ['brevis'],
                '+Dat+Sg': ['brevi'],
                '+Abl+Sg': ['brevi'],

                '+Nom+Pl': ['breves'],
                '+Voc+Pl': ['breves'],
                '+Acc+Pl': ['breves'],
                '+Gen+Pl': ['brevium'],
                '+Dat+Pl': ['brevibus'],
                '+Abl+Pl': ['brevibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['breve'],
                '+Voc+Sg': ['breve'],
                '+Acc+Sg': ['breve'],
                '+Gen+Sg': ['brevis'],
                '+Dat+Sg': ['brevi'],
                '+Abl+Sg': ['brevi'],

                '+Nom+Pl': ['brevia'],
                '+Voc+Pl': ['brevia'],
                '+Acc+Pl': ['brevia'],
                '+Gen+Pl': ['brevium'],
                '+Dat+Pl': ['brevibus'],
                '+Abl+Pl': ['brevibus'],
            },
        },
        '+Comp': {
            '+Masc': {
                '+Nom+Sg': ['brevior'],
                '+Voc+Sg': ['brevior'],
                '+Acc+Sg': ['breviorem'],
                '+Gen+Sg': ['brevioris'],
                '+Dat+Sg': ['breviori'],
                '+Abl+Sg': ['breviore'],

                '+Nom+Pl': ['breviores'],
                '+Voc+Pl': ['breviores'],
                '+Acc+Pl': ['breviores'],
                '+Gen+Pl': ['breviorum'],
                '+Dat+Pl': ['brevioribus'],
                '+Abl+Pl': ['brevioribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['brevior'],
                '+Voc+Sg': ['brevior'],
                '+Acc+Sg': ['breviorem'],
                '+Gen+Sg': ['brevioris'],
                '+Dat+Sg': ['breviori'],
                '+Abl+Sg': ['breviore'],

                '+Nom+Pl': ['breviores'],
                '+Voc+Pl': ['breviores'],
                '+Acc+Pl': ['breviores'],
                '+Gen+Pl': ['breviorum'],
                '+Dat+Pl': ['brevioribus'],
                '+Abl+Pl': ['brevioribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['brevius'],
                '+Voc+Sg': ['brevius'],
                '+Acc+Sg': ['brevius'],
                '+Gen+Sg': ['brevioris'],
                '+Dat+Sg': ['breviori'],
                '+Abl+Sg': ['breviore'],

                '+Nom+Pl': ['breviora'],
                '+Voc+Pl': ['breviora'],
                '+Acc+Pl': ['breviora'],
                '+Gen+Pl': ['breviorum'],
                '+Dat+Pl': ['brevioribus'],
                '+Abl+Pl': ['brevioribus'],
            },
        },
        '+Super': {
            '+Masc': {
                '+Nom+Sg': ['brevissimus'],
                '+Voc+Sg': ['brevissime'],
                '+Acc+Sg': ['brevissimum'],
                '+Gen+Sg': ['brevissimi'],
                '+Dat+Sg': ['brevissimo'],
                '+Abl+Sg': ['brevissimo'],

                '+Nom+Pl': ['brevissimi'],
                '+Voc+Pl': ['brevissimi'],
                '+Acc+Pl': ['brevissimos'],
                '+Gen+Pl': ['brevissimorum'],
                '+Dat+Pl': ['brevissimis'],
                '+Abl+Pl': ['brevissimis'],
            },
            '+Fem': {
                '+Nom+Sg': ['brevissima'],
                '+Voc+Sg': ['brevissima'],
                '+Acc+Sg': ['brevissimam'],
                '+Gen+Sg': ['brevissimae'],
                '+Dat+Sg': ['brevissimae'],
                '+Abl+Sg': ['brevissima'],

                '+Nom+Pl': ['brevissimae'],
                '+Voc+Pl': ['brevissimae'],
                '+Acc+Pl': ['brevissimas'],
                '+Gen+Pl': ['brevissimarum'],
                '+Dat+Pl': ['brevissimis'],
                '+Abl+Pl': ['brevissimis'],
            },
            '+Neut': {
                '+Nom+Sg': ['brevissimum'],
                '+Voc+Sg': ['brevissimum'],
                '+Acc+Sg': ['brevissimum'],
                '+Gen+Sg': ['brevissimi'],
                '+Dat+Sg': ['brevissimo'],
                '+Abl+Sg': ['brevissimo'],

                '+Nom+Pl': ['brevissima'],
                '+Voc+Pl': ['brevissima'],
                '+Acc+Pl': ['brevissima'],
                '+Gen+Pl': ['brevissimorum'],
                '+Dat+Pl': ['brevissimis'],
                '+Abl+Pl': ['brevissimis'],
            },
        },
    },
    '+Adv': {
        '+Pos':   ['breviter'],
        '+Comp':  ['brevius'],
        '+Super': ['brevissime'],
    },
})

test_hash('felix', {
    '+Adj': {
        '+Pos': {
            '+Masc': {
                '+Nom+Sg': ['felix'],
                '+Voc+Sg': ['felix'],
                '+Acc+Sg': ['felicem'],
                '+Gen+Sg': ['felicis'],
                '+Dat+Sg': ['felici'],
                '+Abl+Sg': ['felici'],

                '+Nom+Pl': ['felices'],
                '+Voc+Pl': ['felices'],
                '+Acc+Pl': ['felices'],
                '+Gen+Pl': ['felicium'],
                '+Dat+Pl': ['felicibus'],
                '+Abl+Pl': ['felicibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['felix'],
                '+Voc+Sg': ['felix'],
                '+Acc+Sg': ['felicem'],
                '+Gen+Sg': ['felicis'],
                '+Dat+Sg': ['felici'],
                '+Abl+Sg': ['felici'],

                '+Nom+Pl': ['felices'],
                '+Voc+Pl': ['felices'],
                '+Acc+Pl': ['felices'],
                '+Gen+Pl': ['felicium'],
                '+Dat+Pl': ['felicibus'],
                '+Abl+Pl': ['felicibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['felix'],
                '+Voc+Sg': ['felix'],
                '+Acc+Sg': ['felix'],
                '+Gen+Sg': ['felicis'],
                '+Dat+Sg': ['felici'],
                '+Abl+Sg': ['felici'],

                '+Nom+Pl': ['felicia'],
                '+Voc+Pl': ['felicia'],
                '+Acc+Pl': ['felicia'],
                '+Gen+Pl': ['felicium'],
                '+Dat+Pl': ['felicibus'],
                '+Abl+Pl': ['felicibus'],
            },
        },
        '+Comp': {
            '+Masc': {
                '+Nom+Sg': ['felicior'],
                '+Voc+Sg': ['felicior'],
                '+Acc+Sg': ['feliciorem'],
                '+Gen+Sg': ['felicioris'],
                '+Dat+Sg': ['feliciori'],
                '+Abl+Sg': ['feliciore'],

                '+Nom+Pl': ['feliciores'],
                '+Voc+Pl': ['feliciores'],
                '+Acc+Pl': ['feliciores'],
                '+Gen+Pl': ['feliciorum'],
                '+Dat+Pl': ['felicioribus'],
                '+Abl+Pl': ['felicioribus'],
            },
            '+Fem': {
                '+Nom+Sg': ['felicior'],
                '+Voc+Sg': ['felicior'],
                '+Acc+Sg': ['feliciorem'],
                '+Gen+Sg': ['felicioris'],
                '+Dat+Sg': ['feliciori'],
                '+Abl+Sg': ['feliciore'],

                '+Nom+Pl': ['feliciores'],
                '+Voc+Pl': ['feliciores'],
                '+Acc+Pl': ['feliciores'],
                '+Gen+Pl': ['feliciorum'],
                '+Dat+Pl': ['felicioribus'],
                '+Abl+Pl': ['felicioribus'],
            },
            '+Neut': {
                '+Nom+Sg': ['felicius'],
                '+Voc+Sg': ['felicius'],
                '+Acc+Sg': ['felicius'],
                '+Gen+Sg': ['felicioris'],
                '+Dat+Sg': ['feliciori'],
                '+Abl+Sg': ['feliciore'],

                '+Nom+Pl': ['feliciora'],
                '+Voc+Pl': ['feliciora'],
                '+Acc+Pl': ['feliciora'],
                '+Gen+Pl': ['feliciorum'],
                '+Dat+Pl': ['felicioribus'],
                '+Abl+Pl': ['felicioribus'],
            },
        },
        '+Super': {
            '+Masc': {
                '+Nom+Sg': ['felicissimus'],
                '+Voc+Sg': ['felicissime'],
                '+Acc+Sg': ['felicissimum'],
                '+Gen+Sg': ['felicissimi'],
                '+Dat+Sg': ['felicissimo'],
                '+Abl+Sg': ['felicissimo'],

                '+Nom+Pl': ['felicissimi'],
                '+Voc+Pl': ['felicissimi'],
                '+Acc+Pl': ['felicissimos'],
                '+Gen+Pl': ['felicissimorum'],
                '+Dat+Pl': ['felicissimis'],
                '+Abl+Pl': ['felicissimis'],
            },
            '+Fem': {
                '+Nom+Sg': ['felicissima'],
                '+Voc+Sg': ['felicissima'],
                '+Acc+Sg': ['felicissimam'],
                '+Gen+Sg': ['felicissimae'],
                '+Dat+Sg': ['felicissimae'],
                '+Abl+Sg': ['felicissima'],

                '+Nom+Pl': ['felicissimae'],
                '+Voc+Pl': ['felicissimae'],
                '+Acc+Pl': ['felicissimas'],
                '+Gen+Pl': ['felicissimarum'],
                '+Dat+Pl': ['felicissimis'],
                '+Abl+Pl': ['felicissimis'],
            },
            '+Neut': {
                '+Nom+Sg': ['felicissimum'],
                '+Voc+Sg': ['felicissimum'],
                '+Acc+Sg': ['felicissimum'],
                '+Gen+Sg': ['felicissimi'],
                '+Dat+Sg': ['felicissimo'],
                '+Abl+Sg': ['felicissimo'],

                '+Nom+Pl': ['felicissima'],
                '+Voc+Pl': ['felicissima'],
                '+Acc+Pl': ['felicissima'],
                '+Gen+Pl': ['felicissimorum'],
                '+Dat+Pl': ['felicissimis'],
                '+Abl+Pl': ['felicissimis'],
            },
        },
    },
    '+Adv': {
        '+Pos':   ['feliciter'],
        '+Comp':  ['felicius'],
        '+Super': ['felicissime'],
    },
})

""" 144 lines:

test_hash('+Adj', {
    '+Pos': {
        '+Masc': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Fem': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Neut': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
    },
    '+Comp': {
        '+Masc': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Fem': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Neut': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
    },
    '+Super': {
        '+Masc': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Fem': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
        '+Neut': {
            '+Nom+Sg': [''],
            '+Voc+Sg': [''],
            '+Acc+Sg': [''],
            '+Gen+Sg': [''],
            '+Dat+Sg': [''],
            '+Abl+Sg': [''],

            '+Nom+Pl': [''],
            '+Voc+Pl': [''],
            '+Acc+Pl': [''],
            '+Gen+Pl': [''],
            '+Dat+Pl': [''],
            '+Abl+Pl': [''],
        },
    },
})
"""
# END: Adjectives
diag("%d" % Morph.formcount)
