#!/usr/bin/env python

from morph import *
from TAP.Simple import *

plan(374)

test_hash('patior+Verb+Dep', {
    '+Pres+Ind': {
        '+1S+Pass': ['patior'],
        '+2S+Pass': ['pateris', 'patere'],
        '+3S+Pass': ['patitur'],
        '+1P+Pass': ['patimur'],
        '+2P+Pass': ['patimini'],
        '+3P+Pass': ['patiuntur'],
    },
    '+Pres+Subj': {
        '+1S+Pass': ['patiar'],
        '+2S+Pass': ['patiaris', 'patiare'],
        '+3S+Pass': ['patiatur'],
        '+1P+Pass': ['patiamur'],
        '+2P+Pass': ['patiamini'],
        '+3P+Pass': ['patiantur'],
    },
    '+Impf+Ind': {
        '+1S+Pass': ['patiebar'],
        '+2S+Pass': ['patiebaris', 'patiebare'],
        '+3S+Pass': ['patiebatur'],
        '+1P+Pass': ['patiebamur'],
        '+2P+Pass': ['patiebamini'],
        '+3P+Pass': ['patiebantur'],
    },
    '+Impf+Subj': {
        '+1S+Pass': ['paterer'],
        '+2S+Pass': ['patereris', 'paterere'],
        '+3S+Pass': ['pateretur'],
        '+1P+Pass': ['pateremur'],
        '+2P+Pass': ['pateremini'],
        '+3P+Pass': ['paterentur'],
    },
    '+Fut+Ind': {
        '+1S+Pass': ['patiar'],
        '+2S+Pass': ['patieris', 'patiere'],
        '+3S+Pass': ['patietur'],
        '+1P+Pass': ['patiemur'],
        '+2P+Pass': ['patiemini'],
        '+3P+Pass': ['patientur'],
    },
    '+Pres+Impv': {
        '+2S+Pass': ['patere'],
        '+2P+Pass': ['patimini'],
    },
    '+Inf': {
        '+Pres+Pass': ['pati'],
    },
    '+Part': {
        '+Pres': {
            '+Masc': {
                '+Nom+Sg': ['patiens'],
                '+Voc+Sg': ['patiens'],
                '+Acc+Sg': ['patientem'],
                '+Gen+Sg': ['patientis'],
                '+Dat+Sg': ['patienti'],
                '+Abl+Sg': ['patienti', 'patiente'],

                '+Nom+Pl': ['patientes'],
                '+Voc+Pl': ['patientes'],
                '+Acc+Pl': ['patientes'],
                '+Gen+Pl': ['patientium'],
                '+Dat+Pl': ['patientibus'],
                '+Abl+Pl': ['patientibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['patiens'],
                '+Voc+Sg': ['patiens'],
                '+Acc+Sg': ['patientem'],
                '+Gen+Sg': ['patientis'],
                '+Dat+Sg': ['patienti'],
                '+Abl+Sg': ['patienti', 'patiente'],

                '+Nom+Pl': ['patientes'],
                '+Voc+Pl': ['patientes'],
                '+Acc+Pl': ['patientes'],
                '+Gen+Pl': ['patientium'],
                '+Dat+Pl': ['patientibus'],
                '+Abl+Pl': ['patientibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['patiens'],
                '+Voc+Sg': ['patiens'],
                '+Acc+Sg': ['patiens'],
                '+Gen+Sg': ['patientis'],
                '+Dat+Sg': ['patienti'],
                '+Abl+Sg': ['patienti', 'patiente'],

                '+Nom+Pl': ['patientia'],
                '+Voc+Pl': ['patientia'],
                '+Acc+Pl': ['patientia'],
                '+Gen+Pl': ['patientium'],
                '+Dat+Pl': ['patientibus'],
                '+Abl+Pl': ['patientibus'],
            },
        },
        '+Perf': {
            '+Masc': {
                '+Nom+Sg': ['passus'],
                '+Voc+Sg': ['passe'],
                '+Acc+Sg': ['passum'],
                '+Gen+Sg': ['passi'],
                '+Dat+Sg': ['passo'],
                '+Abl+Sg': ['passo'],

                '+Nom+Pl': ['passi'],
                '+Voc+Pl': ['passi'],
                '+Acc+Pl': ['passos'],
                '+Gen+Pl': ['passorum'],
                '+Dat+Pl': ['passis'],
                '+Abl+Pl': ['passis'],
            },
            '+Fem': {
                '+Nom+Sg': ['passa'],
                '+Voc+Sg': ['passa'],
                '+Acc+Sg': ['passam'],
                '+Gen+Sg': ['passae'],
                '+Dat+Sg': ['passae'],
                '+Abl+Sg': ['passa'],

                '+Nom+Pl': ['passae'],
                '+Voc+Pl': ['passae'],
                '+Acc+Pl': ['passas'],
                '+Gen+Pl': ['passarum'],
                '+Dat+Pl': ['passis'],
                '+Abl+Pl': ['passis'],
            },
            '+Neut': {
                '+Nom+Sg': ['passum'],
                '+Voc+Sg': ['passum'],
                '+Acc+Sg': ['passum'],
                '+Gen+Sg': ['passi'],
                '+Dat+Sg': ['passo'],
                '+Abl+Sg': ['passo'],

                '+Nom+Pl': ['passa'],
                '+Voc+Pl': ['passa'],
                '+Acc+Pl': ['passa'],
                '+Gen+Pl': ['passorum'],
                '+Dat+Pl': ['passis'],
                '+Abl+Pl': ['passis'],
            },
        },
        '+Fut': {
            '+Masc': {
                '+Nom+Sg': ['passurus'],
                '+Voc+Sg': ['passure'],
                '+Acc+Sg': ['passurum'],
                '+Gen+Sg': ['passuri'],
                '+Dat+Sg': ['passuro'],
                '+Abl+Sg': ['passuro'],

                '+Nom+Pl': ['passuri'],
                '+Voc+Pl': ['passuri'],
                '+Acc+Pl': ['passuros'],
                '+Gen+Pl': ['passurorum'],
                '+Dat+Pl': ['passuris'],
                '+Abl+Pl': ['passuris'],
            },
            '+Fem': {
                '+Nom+Sg': ['passura'],
                '+Voc+Sg': ['passura'],
                '+Acc+Sg': ['passuram'],
                '+Gen+Sg': ['passurae'],
                '+Dat+Sg': ['passurae'],
                '+Abl+Sg': ['passura'],

                '+Nom+Pl': ['passurae'],
                '+Voc+Pl': ['passurae'],
                '+Acc+Pl': ['passuras'],
                '+Gen+Pl': ['passurarum'],
                '+Dat+Pl': ['passuris'],
                '+Abl+Pl': ['passuris'],
            },
            '+Neut': {
                '+Nom+Sg': ['passurum'],
                '+Voc+Sg': ['passurum'],
                '+Acc+Sg': ['passurum'],
                '+Gen+Sg': ['passuri'],
                '+Dat+Sg': ['passuro'],
                '+Abl+Sg': ['passuro'],

                '+Nom+Pl': ['passura'],
                '+Voc+Pl': ['passura'],
                '+Acc+Pl': ['passura'],
                '+Gen+Pl': ['passurorum'],
                '+Dat+Pl': ['passuris'],
                '+Abl+Pl': ['passuris'],
            },
        },
    },
    '+Ger': {
        '+Acc': ['patiendum'],
        '+Gen': ['patiendi'],
        '+Dat': ['patiendo'],
        '+Abl': ['patiendo'],
    },
    '+Gerv': {
        '+Masc': {
            '+Nom+Sg': ['patiendus'],
            '+Voc+Sg': ['patiende'],
            '+Acc+Sg': ['patiendum'],
            '+Gen+Sg': ['patiendi'],
            '+Dat+Sg': ['patiendo'],
            '+Abl+Sg': ['patiendo'],

            '+Nom+Pl': ['patiendi'],
            '+Voc+Pl': ['patiendi'],
            '+Acc+Pl': ['patiendos'],
            '+Gen+Pl': ['patiendorum'],
            '+Dat+Pl': ['patiendis'],
            '+Abl+Pl': ['patiendis'],
        },
        '+Fem': {
            '+Nom+Sg': ['patienda'],
            '+Voc+Sg': ['patienda'],
            '+Acc+Sg': ['patiendam'],
            '+Gen+Sg': ['patiendae'],
            '+Dat+Sg': ['patiendae'],
            '+Abl+Sg': ['patienda'],

            '+Nom+Pl': ['patiendae'],
            '+Voc+Pl': ['patiendae'],
            '+Acc+Pl': ['patiendas'],
            '+Gen+Pl': ['patiendarum'],
            '+Dat+Pl': ['patiendis'],
            '+Abl+Pl': ['patiendis'],
        },
        '+Neut': {
            '+Nom+Sg': ['patiendum'],
            '+Voc+Sg': ['patiendum'],
            '+Acc+Sg': ['patiendum'],
            '+Gen+Sg': ['patiendi'],
            '+Dat+Sg': ['patiendo'],
            '+Abl+Sg': ['patiendo'],

            '+Nom+Pl': ['patienda'],
            '+Voc+Pl': ['patienda'],
            '+Acc+Pl': ['patienda'],
            '+Gen+Pl': ['patiendorum'],
            '+Dat+Pl': ['patiendis'],
            '+Abl+Pl': ['patiendis'],
        },
    },
    '+SupI': ['passum'],
    '+SupII': ['passu'],
})
diag("%d" % Morph.formcount)
