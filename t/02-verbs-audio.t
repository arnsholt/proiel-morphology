#!/usr/bin/env python

from morph import *
from TAP.Simple import *

plan(543)

test_hash('audio+Verb', {
    '+Pres+Ind': {
        '+1S+Act': ['audio'],
        '+2S+Act': ['audis'],
        '+3S+Act': ['audit'],
        '+1P+Act': ['audimus'],
        '+2P+Act': ['auditis'],
        '+3P+Act': ['audiunt'],
        '+1S+Pass': ['audior'],
        '+2S+Pass': ['audiris', 'audire'],
        '+3S+Pass': ['auditur'],
        '+1P+Pass': ['audimur'],
        '+2P+Pass': ['audimini'],
        '+3P+Pass': ['audiuntur'],
    },
    '+Pres+Subj': {
        '+1S+Act': ['audiam'],
        '+2S+Act': ['audias'],
        '+3S+Act': ['audiat'],
        '+1P+Act': ['audiamus'],
        '+2P+Act': ['audiatis'],
        '+3P+Act': ['audiant'],
        '+1S+Pass': ['audiar'],
        '+2S+Pass': ['audiaris', 'audiare'],
        '+3S+Pass': ['audiatur'],
        '+1P+Pass': ['audiamur'],
        '+2P+Pass': ['audiamini'],
        '+3P+Pass': ['audiantur'],
    },
    '+Impf+Ind': {
        '+1S+Act': ['audiebam'],
        '+2S+Act': ['audiebas'],
        '+3S+Act': ['audiebat'],
        '+1P+Act': ['audiebamus'],
        '+2P+Act': ['audiebatis'],
        '+3P+Act': ['audiebant'],
        '+1S+Pass': ['audiebar'],
        '+2S+Pass': ['audiebaris', 'audiebare'],
        '+3S+Pass': ['audiebatur'],
        '+1P+Pass': ['audiebamur'],
        '+2P+Pass': ['audiebamini'],
        '+3P+Pass': ['audiebantur'],
    },
    '+Impf+Subj': {
        '+1S+Act': ['audirem'],
        '+2S+Act': ['audires'],
        '+3S+Act': ['audiret'],
        '+1P+Act': ['audiremus'],
        '+2P+Act': ['audiretis'],
        '+3P+Act': ['audirent'],
        '+1S+Pass': ['audirer'],
        '+2S+Pass': ['audireris', 'audirere'],
        '+3S+Pass': ['audiretur'],
        '+1P+Pass': ['audiremur'],
        '+2P+Pass': ['audiremini'],
        '+3P+Pass': ['audirentur'],
    },
    '+Fut+Ind': {
        '+1S+Act': ['audiam'],
        '+2S+Act': ['audies'],
        '+3S+Act': ['audiet'],
        '+1P+Act': ['audiemus'],
        '+2P+Act': ['audietis'],
        '+3P+Act': ['audient'],
        '+1S+Pass': ['audiar'],
        '+2S+Pass': ['audieris', 'audiere'],
        '+3S+Pass': ['audietur'],
        '+1P+Pass': ['audiemur'],
        '+2P+Pass': ['audiemini'],
        '+3P+Pass': ['audientur'],
    },
    '+Perf+Ind': {
        '+1S+Act': ['audivi', 'audii'],
        '+2S+Act': ['audivisti', 'audisti'],
        '+3S+Act': ['audivit', 'audiit'],
        '+1P+Act': ['audivimus', 'audiimus'],
        '+2P+Act': ['audivistis', 'audistis'],
        '+3P+Act': ['audiverunt', 'audivere', 'audierunt', 'audiere'],
    },
    '+Perf+Subj': {
        '+1S+Act': ['audiverim',   'audierim'],
        '+2S+Act': ['audiveris',   'audieris'],
        '+3S+Act': ['audiverit',   'audierit'],
        '+1P+Act': ['audiverimus', 'audierimus'],
        '+2P+Act': ['audiveritis', 'audieritis'],
        '+3P+Act': ['audiverint',  'audierint'],
    },
    '+Pqp+Ind': {
        '+1S+Act': ['audiveram',   'audieram'],
        '+2S+Act': ['audiveras',   'audieras'],
        '+3S+Act': ['audiverat',   'audierat'],
        '+1P+Act': ['audiveramus', 'audieramus'],
        '+2P+Act': ['audiveratis', 'audieratis'],
        '+3P+Act': ['audiverant',  'audierant'],
    },
    '+Pqp+Subj': {
        '+1S+Act': ['audivissem',   'audissem'],
        '+2S+Act': ['audivisses',   'audisses'],
        '+3S+Act': ['audivisset',   'audisset'],
        '+1P+Act': ['audivissemus', 'audissemus'],
        '+2P+Act': ['audivissetis', 'audissetis'],
        '+3P+Act': ['audivissent',  'audissent'],
    },
    '+FutII+Ind': {
        '+1S+Act': ['audivero',    'audiero'],
        '+2S+Act': ['audiveris',   'audieris'],
        '+3S+Act': ['audiverit',   'audierit'],
        '+1P+Act': ['audiverimus', 'audierimus'],
        '+2P+Act': ['audiveritis', 'audieritis'],
        '+3P+Act': ['audiverint',  'audierint'],
    },
    '+Pres+Impv': {
        '+2S+Act' : ['audi'],
        '+2P+Act' : ['audite'],
        '+2S+Pass': ['audire'],
        '+2P+Pass': ['audimini'],
    },
    '+Fut+Impv': {
        '+2S+Act': ['audito'],
        '+3S+Act': ['audito'],
        '+2P+Act': ['auditote'],
        '+3P+Act': ['audiunto'],
    },
    '+Inf': {
        '+Pres+Act': ['audire'],
        '+Pres+Pass': ['audiri'],
        '+Perf+Act': ['audivisse', 'audisse'],
    },
    '+Part': {
        '+Pres': {
            '+Masc': {
                '+Nom+Sg': ['audiens'],
                '+Voc+Sg': ['audiens'],
                '+Acc+Sg': ['audientem'],
                '+Gen+Sg': ['audientis'],
                '+Dat+Sg': ['audienti'],
                '+Abl+Sg': ['audienti', 'audiente'],

                '+Nom+Pl': ['audientes'],
                '+Voc+Pl': ['audientes'],
                '+Acc+Pl': ['audientes'],
                '+Gen+Pl': ['audientium'],
                '+Dat+Pl': ['audientibus'],
                '+Abl+Pl': ['audientibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['audiens'],
                '+Voc+Sg': ['audiens'],
                '+Acc+Sg': ['audientem'],
                '+Gen+Sg': ['audientis'],
                '+Dat+Sg': ['audienti'],
                '+Abl+Sg': ['audienti', 'audiente'],

                '+Nom+Pl': ['audientes'],
                '+Voc+Pl': ['audientes'],
                '+Acc+Pl': ['audientes'],
                '+Gen+Pl': ['audientium'],
                '+Dat+Pl': ['audientibus'],
                '+Abl+Pl': ['audientibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['audiens'],
                '+Voc+Sg': ['audiens'],
                '+Acc+Sg': ['audiens'],
                '+Gen+Sg': ['audientis'],
                '+Dat+Sg': ['audienti'],
                '+Abl+Sg': ['audienti', 'audiente'],

                '+Nom+Pl': ['audientia'],
                '+Voc+Pl': ['audientia'],
                '+Acc+Pl': ['audientia'],
                '+Gen+Pl': ['audientium'],
                '+Dat+Pl': ['audientibus'],
                '+Abl+Pl': ['audientibus'],
            },
        },
        '+Perf': {
            '+Masc': {
                '+Nom+Sg': ['auditus'],
                '+Voc+Sg': ['audite'],
                '+Acc+Sg': ['auditum'],
                '+Gen+Sg': ['auditi'],
                '+Dat+Sg': ['audito'],
                '+Abl+Sg': ['audito'],

                '+Nom+Pl': ['auditi'],
                '+Voc+Pl': ['auditi'],
                '+Acc+Pl': ['auditos'],
                '+Gen+Pl': ['auditorum'],
                '+Dat+Pl': ['auditis'],
                '+Abl+Pl': ['auditis'],
            },
            '+Fem': {
                '+Nom+Sg': ['audita'],
                '+Voc+Sg': ['audita'],
                '+Acc+Sg': ['auditam'],
                '+Gen+Sg': ['auditae'],
                '+Dat+Sg': ['auditae'],
                '+Abl+Sg': ['audita'],

                '+Nom+Pl': ['auditae'],
                '+Voc+Pl': ['auditae'],
                '+Acc+Pl': ['auditas'],
                '+Gen+Pl': ['auditarum'],
                '+Dat+Pl': ['auditis'],
                '+Abl+Pl': ['auditis'],
            },
            '+Neut': {
                '+Nom+Sg': ['auditum'],
                '+Voc+Sg': ['auditum'],
                '+Acc+Sg': ['auditum'],
                '+Gen+Sg': ['auditi'],
                '+Dat+Sg': ['audito'],
                '+Abl+Sg': ['audito'],

                '+Nom+Pl': ['audita'],
                '+Voc+Pl': ['audita'],
                '+Acc+Pl': ['audita'],
                '+Gen+Pl': ['auditorum'],
                '+Dat+Pl': ['auditis'],
                '+Abl+Pl': ['auditis'],
            },
        },
        '+Fut': {
            '+Masc': {
                '+Nom+Sg': ['auditurus'],
                '+Voc+Sg': ['auditure'],
                '+Acc+Sg': ['auditurum'],
                '+Gen+Sg': ['audituri'],
                '+Dat+Sg': ['audituro'],
                '+Abl+Sg': ['audituro'],

                '+Nom+Pl': ['audituri'],
                '+Voc+Pl': ['audituri'],
                '+Acc+Pl': ['audituros'],
                '+Gen+Pl': ['auditurorum'],
                '+Dat+Pl': ['audituris'],
                '+Abl+Pl': ['audituris'],
            },
            '+Fem': {
                '+Nom+Sg': ['auditura'],
                '+Voc+Sg': ['auditura'],
                '+Acc+Sg': ['audituram'],
                '+Gen+Sg': ['auditurae'],
                '+Dat+Sg': ['auditurae'],
                '+Abl+Sg': ['auditura'],

                '+Nom+Pl': ['auditurae'],
                '+Voc+Pl': ['auditurae'],
                '+Acc+Pl': ['audituras'],
                '+Gen+Pl': ['auditurarum'],
                '+Dat+Pl': ['audituris'],
                '+Abl+Pl': ['audituris'],
            },
            '+Neut': {
                '+Nom+Sg': ['auditurum'],
                '+Voc+Sg': ['auditurum'],
                '+Acc+Sg': ['auditurum'],
                '+Gen+Sg': ['audituri'],
                '+Dat+Sg': ['audituro'],
                '+Abl+Sg': ['audituro'],

                '+Nom+Pl': ['auditura'],
                '+Voc+Pl': ['auditura'],
                '+Acc+Pl': ['auditura'],
                '+Gen+Pl': ['auditurorum'],
                '+Dat+Pl': ['audituris'],
                '+Abl+Pl': ['audituris'],
            },
        },
    },
    '+Ger': {
        '+Acc': ['audiendum'],
        '+Gen': ['audiendi'],
        '+Dat': ['audiendo'],
        '+Abl': ['audiendo'],
    },
    '+Gerv': {
        '+Masc': {
            '+Nom+Sg': ['audiendus'],
            '+Voc+Sg': ['audiende'],
            '+Acc+Sg': ['audiendum'],
            '+Gen+Sg': ['audiendi'],
            '+Dat+Sg': ['audiendo'],
            '+Abl+Sg': ['audiendo'],

            '+Nom+Pl': ['audiendi'],
            '+Voc+Pl': ['audiendi'],
            '+Acc+Pl': ['audiendos'],
            '+Gen+Pl': ['audiendorum'],
            '+Dat+Pl': ['audiendis'],
            '+Abl+Pl': ['audiendis'],
        },
        '+Fem': {
            '+Nom+Sg': ['audienda'],
            '+Voc+Sg': ['audienda'],
            '+Acc+Sg': ['audiendam'],
            '+Gen+Sg': ['audiendae'],
            '+Dat+Sg': ['audiendae'],
            '+Abl+Sg': ['audienda'],

            '+Nom+Pl': ['audiendae'],
            '+Voc+Pl': ['audiendae'],
            '+Acc+Pl': ['audiendas'],
            '+Gen+Pl': ['audiendarum'],
            '+Dat+Pl': ['audiendis'],
            '+Abl+Pl': ['audiendis'],
        },
        '+Neut': {
            '+Nom+Sg': ['audiendum'],
            '+Voc+Sg': ['audiendum'],
            '+Acc+Sg': ['audiendum'],
            '+Gen+Sg': ['audiendi'],
            '+Dat+Sg': ['audiendo'],
            '+Abl+Sg': ['audiendo'],

            '+Nom+Pl': ['audienda'],
            '+Voc+Pl': ['audienda'],
            '+Acc+Pl': ['audienda'],
            '+Gen+Pl': ['audiendorum'],
            '+Dat+Pl': ['audiendis'],
            '+Abl+Pl': ['audiendis'],
        },
    },
    '+SupI': ['auditum'],
    '+SupII': ['auditu'],
})
diag("%d" % Morph.formcount)
