#!/usr/bin/env python

from morph import *
from TAP.Simple import *

plan(374)

test_hash('partior+Verb+Dep', {
    '+Pres+Ind': {
        '+1st+Sg+Pass': ['partior'],
        '+2nd+Sg+Pass': ['partiris', 'partire'],
        '+3rd+Sg+Pass': ['partitur'],
        '+1st+Pl+Pass': ['partimur'],
        '+2nd+Pl+Pass': ['partimini'],
        '+3rd+Pl+Pass': ['partiuntur'],
    },
    '+Pres+Subj': {
        '+1st+Sg+Pass': ['partiar'],
        '+2nd+Sg+Pass': ['partiaris', 'partiare'],
        '+3rd+Sg+Pass': ['partiatur'],
        '+1st+Pl+Pass': ['partiamur'],
        '+2nd+Pl+Pass': ['partiamini'],
        '+3rd+Pl+Pass': ['partiantur'],
    },
    '+Impf+Ind': {
        '+1st+Sg+Pass': ['partiebar'],
        '+2nd+Sg+Pass': ['partiebaris', 'partiebare'],
        '+3rd+Sg+Pass': ['partiebatur'],
        '+1st+Pl+Pass': ['partiebamur'],
        '+2nd+Pl+Pass': ['partiebamini'],
        '+3rd+Pl+Pass': ['partiebantur'],
    },
    '+Impf+Subj': {
        '+1st+Sg+Pass': ['partirer'],
        '+2nd+Sg+Pass': ['partireris', 'partirere'],
        '+3rd+Sg+Pass': ['partiretur'],
        '+1st+Pl+Pass': ['partiremur'],
        '+2nd+Pl+Pass': ['partiremini'],
        '+3rd+Pl+Pass': ['partirentur'],
    },
    '+Fut+Ind': {
        '+1st+Sg+Pass': ['partiar'],
        '+2nd+Sg+Pass': ['partieris', 'partiere'],
        '+3rd+Sg+Pass': ['partietur'],
        '+1st+Pl+Pass': ['partiemur'],
        '+2nd+Pl+Pass': ['partiemini'],
        '+3rd+Pl+Pass': ['partientur'],
    },
    '+Pres+Impv': {
        '+2nd+Sg+Pass': ['partire'],
        '+2nd+Pl+Pass': ['partimini'],
    },
    '+Inf': {
        '+Pres+Pass': ['partiri'],
    },
    '+Part': {
        '+Pres': {
            '+Masc': {
                '+Nom+Sg': ['partiens'],
                '+Voc+Sg': ['partiens'],
                '+Acc+Sg': ['partientem'],
                '+Gen+Sg': ['partientis'],
                '+Dat+Sg': ['partienti'],
                '+Abl+Sg': ['partienti', 'partiente'],

                '+Nom+Pl': ['partientes'],
                '+Voc+Pl': ['partientes'],
                '+Acc+Pl': ['partientes'],
                '+Gen+Pl': ['partientium'],
                '+Dat+Pl': ['partientibus'],
                '+Abl+Pl': ['partientibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['partiens'],
                '+Voc+Sg': ['partiens'],
                '+Acc+Sg': ['partientem'],
                '+Gen+Sg': ['partientis'],
                '+Dat+Sg': ['partienti'],
                '+Abl+Sg': ['partienti', 'partiente'],

                '+Nom+Pl': ['partientes'],
                '+Voc+Pl': ['partientes'],
                '+Acc+Pl': ['partientes'],
                '+Gen+Pl': ['partientium'],
                '+Dat+Pl': ['partientibus'],
                '+Abl+Pl': ['partientibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['partiens'],
                '+Voc+Sg': ['partiens'],
                '+Acc+Sg': ['partiens'],
                '+Gen+Sg': ['partientis'],
                '+Dat+Sg': ['partienti'],
                '+Abl+Sg': ['partienti', 'partiente'],

                '+Nom+Pl': ['partientia'],
                '+Voc+Pl': ['partientia'],
                '+Acc+Pl': ['partientia'],
                '+Gen+Pl': ['partientium'],
                '+Dat+Pl': ['partientibus'],
                '+Abl+Pl': ['partientibus'],
            },
        },
        '+Perf': {
            '+Masc': {
                '+Nom+Sg': ['partitus'],
                '+Voc+Sg': ['partite'],
                '+Acc+Sg': ['partitum'],
                '+Gen+Sg': ['partiti'],
                '+Dat+Sg': ['partito'],
                '+Abl+Sg': ['partito'],

                '+Nom+Pl': ['partiti'],
                '+Voc+Pl': ['partiti'],
                '+Acc+Pl': ['partitos'],
                '+Gen+Pl': ['partitorum'],
                '+Dat+Pl': ['partitis'],
                '+Abl+Pl': ['partitis'],
            },
            '+Fem': {
                '+Nom+Sg': ['partita'],
                '+Voc+Sg': ['partita'],
                '+Acc+Sg': ['partitam'],
                '+Gen+Sg': ['partitae'],
                '+Dat+Sg': ['partitae'],
                '+Abl+Sg': ['partita'],

                '+Nom+Pl': ['partitae'],
                '+Voc+Pl': ['partitae'],
                '+Acc+Pl': ['partitas'],
                '+Gen+Pl': ['partitarum'],
                '+Dat+Pl': ['partitis'],
                '+Abl+Pl': ['partitis'],
            },
            '+Neut': {
                '+Nom+Sg': ['partitum'],
                '+Voc+Sg': ['partitum'],
                '+Acc+Sg': ['partitum'],
                '+Gen+Sg': ['partiti'],
                '+Dat+Sg': ['partito'],
                '+Abl+Sg': ['partito'],

                '+Nom+Pl': ['partita'],
                '+Voc+Pl': ['partita'],
                '+Acc+Pl': ['partita'],
                '+Gen+Pl': ['partitorum'],
                '+Dat+Pl': ['partitis'],
                '+Abl+Pl': ['partitis'],
            },
        },
        '+Fut': {
            '+Masc': {
                '+Nom+Sg': ['partiturus'],
                '+Voc+Sg': ['partiture'],
                '+Acc+Sg': ['partiturum'],
                '+Gen+Sg': ['partituri'],
                '+Dat+Sg': ['partituro'],
                '+Abl+Sg': ['partituro'],

                '+Nom+Pl': ['partituri'],
                '+Voc+Pl': ['partituri'],
                '+Acc+Pl': ['partituros'],
                '+Gen+Pl': ['partiturorum'],
                '+Dat+Pl': ['partituris'],
                '+Abl+Pl': ['partituris'],
            },
            '+Fem': {
                '+Nom+Sg': ['partitura'],
                '+Voc+Sg': ['partitura'],
                '+Acc+Sg': ['partituram'],
                '+Gen+Sg': ['partiturae'],
                '+Dat+Sg': ['partiturae'],
                '+Abl+Sg': ['partitura'],

                '+Nom+Pl': ['partiturae'],
                '+Voc+Pl': ['partiturae'],
                '+Acc+Pl': ['partituras'],
                '+Gen+Pl': ['partiturarum'],
                '+Dat+Pl': ['partituris'],
                '+Abl+Pl': ['partituris'],
            },
            '+Neut': {
                '+Nom+Sg': ['partiturum'],
                '+Voc+Sg': ['partiturum'],
                '+Acc+Sg': ['partiturum'],
                '+Gen+Sg': ['partituri'],
                '+Dat+Sg': ['partituro'],
                '+Abl+Sg': ['partituro'],

                '+Nom+Pl': ['partitura'],
                '+Voc+Pl': ['partitura'],
                '+Acc+Pl': ['partitura'],
                '+Gen+Pl': ['partiturorum'],
                '+Dat+Pl': ['partituris'],
                '+Abl+Pl': ['partituris'],
            },
        },
    },
    '+Ger': {
        '+Acc': ['partiendum'],
        '+Gen': ['partiendi'],
        '+Dat': ['partiendo'],
        '+Abl': ['partiendo'],
    },
    '+Gerv': {
        '+Masc': {
            '+Nom+Sg': ['partiendus'],
            '+Voc+Sg': ['partiende'],
            '+Acc+Sg': ['partiendum'],
            '+Gen+Sg': ['partiendi'],
            '+Dat+Sg': ['partiendo'],
            '+Abl+Sg': ['partiendo'],

            '+Nom+Pl': ['partiendi'],
            '+Voc+Pl': ['partiendi'],
            '+Acc+Pl': ['partiendos'],
            '+Gen+Pl': ['partiendorum'],
            '+Dat+Pl': ['partiendis'],
            '+Abl+Pl': ['partiendis'],
        },
        '+Fem': {
            '+Nom+Sg': ['partienda'],
            '+Voc+Sg': ['partienda'],
            '+Acc+Sg': ['partiendam'],
            '+Gen+Sg': ['partiendae'],
            '+Dat+Sg': ['partiendae'],
            '+Abl+Sg': ['partienda'],

            '+Nom+Pl': ['partiendae'],
            '+Voc+Pl': ['partiendae'],
            '+Acc+Pl': ['partiendas'],
            '+Gen+Pl': ['partiendarum'],
            '+Dat+Pl': ['partiendis'],
            '+Abl+Pl': ['partiendis'],
        },
        '+Neut': {
            '+Nom+Sg': ['partiendum'],
            '+Voc+Sg': ['partiendum'],
            '+Acc+Sg': ['partiendum'],
            '+Gen+Sg': ['partiendi'],
            '+Dat+Sg': ['partiendo'],
            '+Abl+Sg': ['partiendo'],

            '+Nom+Pl': ['partienda'],
            '+Voc+Pl': ['partienda'],
            '+Acc+Pl': ['partienda'],
            '+Gen+Pl': ['partiendorum'],
            '+Dat+Pl': ['partiendis'],
            '+Abl+Pl': ['partiendis'],
        },
    },
    '+SupI': ['partitum'],
    '+SupII': ['partitu'],
})
diag("%d" % Morph.formcount)
