#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(511)

test_hash('moneo+Verb', {
    '+Pres+Ind': {
        '+1S+Act': ['moneo'],
        '+2S+Act': ['mones'],
        '+3S+Act': ['monet'],
        '+1P+Act': ['monemus'],
        '+2P+Act': ['monetis'],
        '+3P+Act': ['monent'],
        '+1S+Pass': ['moneor'],
        '+2S+Pass': ['moneris', 'monere'],
        '+3S+Pass': ['monetur'],
        '+1P+Pass': ['monemur'],
        '+2P+Pass': ['monemini'],
        '+3P+Pass': ['monentur'],
    },
    '+Pres+Subj': {
        '+1S+Act': ['moneam'],
        '+2S+Act': ['moneas'],
        '+3S+Act': ['moneat'],
        '+1P+Act': ['moneamus'],
        '+2P+Act': ['moneatis'],
        '+3P+Act': ['moneant'],
        '+1S+Pass': ['monear'],
        '+2S+Pass': ['monearis', 'moneare'],
        '+3S+Pass': ['moneatur'],
        '+1P+Pass': ['moneamur'],
        '+2P+Pass': ['moneamini'],
        '+3P+Pass': ['moneantur'],
    },
    '+Impf+Ind': {
        '+1S+Act': ['monebam'],
        '+2S+Act': ['monebas'],
        '+3S+Act': ['monebat'],
        '+1P+Act': ['monebamus'],
        '+2P+Act': ['monebatis'],
        '+3P+Act': ['monebant'],
        '+1S+Pass': ['monebar'],
        '+2S+Pass': ['monebaris', 'monebare'],
        '+3S+Pass': ['monebatur'],
        '+1P+Pass': ['monebamur'],
        '+2P+Pass': ['monebamini'],
        '+3P+Pass': ['monebantur'],
    },
    '+Impf+Subj': {
        '+1S+Act': ['monerem'],
        '+2S+Act': ['moneres'],
        '+3S+Act': ['moneret'],
        '+1P+Act': ['moneremus'],
        '+2P+Act': ['moneretis'],
        '+3P+Act': ['monerent'],
        '+1S+Pass': ['monerer'],
        '+2S+Pass': ['monereris', 'monerere'],
        '+3S+Pass': ['moneretur'],
        '+1P+Pass': ['moneremur'],
        '+2P+Pass': ['moneremini'],
        '+3P+Pass': ['monerentur'],
    },
    '+Fut+Ind': {
        '+1S+Act': ['monebo'],
        '+2S+Act': ['monebis'],
        '+3S+Act': ['monebit'],
        '+1P+Act': ['monebimus'],
        '+2P+Act': ['monebitis'],
        '+3P+Act': ['monebunt'],
        '+1S+Pass': ['monebor'],
        '+2S+Pass': ['moneberis', 'monebere'],
        '+3S+Pass': ['monebitur'],
        '+1P+Pass': ['monebimur'],
        '+2P+Pass': ['monebimini'],
        '+3P+Pass': ['monebuntur'],
    },
    '+Perf+Ind': {
        '+1S+Act': ['monui'],
        '+2S+Act': ['monuisti'],
        '+3S+Act': ['monuit'],
        '+1P+Act': ['monuimus'],
        '+2P+Act': ['monuistis'],
        '+3P+Act': ['monuerunt', 'monuere'],
    },
    '+Perf+Subj': {
        '+1S+Act': ['monuerim'],
        '+2S+Act': ['monueris'],
        '+3S+Act': ['monuerit'],
        '+1P+Act': ['monuerimus'],
        '+2P+Act': ['monueritis'],
        '+3P+Act': ['monuerint'],
    },
    '+Pqp+Ind': {
        '+1S+Act': ['monueram'],
        '+2S+Act': ['monueras'],
        '+3S+Act': ['monuerat'],
        '+1P+Act': ['monueramus'],
        '+2P+Act': ['monueratis'],
        '+3P+Act': ['monuerant'],
    },
    '+Pqp+Subj': {
        '+1S+Act': ['monuissem'],
        '+2S+Act': ['monuisses'],
        '+3S+Act': ['monuisset'],
        '+1P+Act': ['monuissemus'],
        '+2P+Act': ['monuissetis'],
        '+3P+Act': ['monuissent'],
    },
    '+FutII+Ind': {
        '+1S+Act': ['monuero'],
        '+2S+Act': ['monueris'],
        '+3S+Act': ['monuerit'],
        '+1P+Act': ['monuerimus'],
        '+2P+Act': ['monueritis'],
        '+3P+Act': ['monuerint'],
    },
    '+Pres+Impv': {
        '+2S+Act' : ['mone'],
        '+2P+Act' : ['monete'],
        '+2S+Pass': ['monere'],
        '+2P+Pass': ['monemini'],
    },
    '+Fut+Impv': {
        '+2S+Act': ['moneto'],
        '+3S+Act': ['moneto'],
        '+2P+Act': ['monetote'],
        '+3P+Act': ['monento'],
    },
    '+Inf': {
        '+Pres+Act': ['monere'],
        '+Pres+Pass': ['moneri'],
        '+Perf+Act': ['monuisse'],
    },
    '+Part': {
        '+Pres': {
            '+Masc': {
                '+Nom+Sg': ['monens'],
                '+Voc+Sg': ['monens'],
                '+Acc+Sg': ['monentem'],
                '+Gen+Sg': ['monentis'],
                '+Dat+Sg': ['monenti'],
                '+Abl+Sg': ['monenti', 'monente'],

                '+Nom+Pl': ['monentes'],
                '+Voc+Pl': ['monentes'],
                '+Acc+Pl': ['monentes'],
                '+Gen+Pl': ['monentium'],
                '+Dat+Pl': ['monentibus'],
                '+Abl+Pl': ['monentibus'],
            },
            '+Fem': {
                '+Nom+Sg': ['monens'],
                '+Voc+Sg': ['monens'],
                '+Acc+Sg': ['monentem'],
                '+Gen+Sg': ['monentis'],
                '+Dat+Sg': ['monenti'],
                '+Abl+Sg': ['monenti', 'monente'],

                '+Nom+Pl': ['monentes'],
                '+Voc+Pl': ['monentes'],
                '+Acc+Pl': ['monentes'],
                '+Gen+Pl': ['monentium'],
                '+Dat+Pl': ['monentibus'],
                '+Abl+Pl': ['monentibus'],
            },
            '+Neut': {
                '+Nom+Sg': ['monens'],
                '+Voc+Sg': ['monens'],
                '+Acc+Sg': ['monens'],
                '+Gen+Sg': ['monentis'],
                '+Dat+Sg': ['monenti'],
                '+Abl+Sg': ['monenti', 'monente'],

                '+Nom+Pl': ['monentia'],
                '+Voc+Pl': ['monentia'],
                '+Acc+Pl': ['monentia'],
                '+Gen+Pl': ['monentium'],
                '+Dat+Pl': ['monentibus'],
                '+Abl+Pl': ['monentibus'],
            },
        },
        '+Perf': {
            '+Masc': {
                '+Nom+Sg': ['monitus'],
                '+Voc+Sg': ['monite'],
                '+Acc+Sg': ['monitum'],
                '+Gen+Sg': ['moniti'],
                '+Dat+Sg': ['monito'],
                '+Abl+Sg': ['monito'],

                '+Nom+Pl': ['moniti'],
                '+Voc+Pl': ['moniti'],
                '+Acc+Pl': ['monitos'],
                '+Gen+Pl': ['monitorum'],
                '+Dat+Pl': ['monitis'],
                '+Abl+Pl': ['monitis'],
            },
            '+Fem': {
                '+Nom+Sg': ['monita'],
                '+Voc+Sg': ['monita'],
                '+Acc+Sg': ['monitam'],
                '+Gen+Sg': ['monitae'],
                '+Dat+Sg': ['monitae'],
                '+Abl+Sg': ['monita'],

                '+Nom+Pl': ['monitae'],
                '+Voc+Pl': ['monitae'],
                '+Acc+Pl': ['monitas'],
                '+Gen+Pl': ['monitarum'],
                '+Dat+Pl': ['monitis'],
                '+Abl+Pl': ['monitis'],
            },
            '+Neut': {
                '+Nom+Sg': ['monitum'],
                '+Voc+Sg': ['monitum'],
                '+Acc+Sg': ['monitum'],
                '+Gen+Sg': ['moniti'],
                '+Dat+Sg': ['monito'],
                '+Abl+Sg': ['monito'],

                '+Nom+Pl': ['monita'],
                '+Voc+Pl': ['monita'],
                '+Acc+Pl': ['monita'],
                '+Gen+Pl': ['monitorum'],
                '+Dat+Pl': ['monitis'],
                '+Abl+Pl': ['monitis'],
            },
        },
        '+Fut': {
            '+Masc': {
                '+Nom+Sg': ['moniturus'],
                '+Voc+Sg': ['moniture'],
                '+Acc+Sg': ['moniturum'],
                '+Gen+Sg': ['monituri'],
                '+Dat+Sg': ['monituro'],
                '+Abl+Sg': ['monituro'],

                '+Nom+Pl': ['monituri'],
                '+Voc+Pl': ['monituri'],
                '+Acc+Pl': ['monituros'],
                '+Gen+Pl': ['moniturorum'],
                '+Dat+Pl': ['monituris'],
                '+Abl+Pl': ['monituris'],
            },
            '+Fem': {
                '+Nom+Sg': ['monitura'],
                '+Voc+Sg': ['monitura'],
                '+Acc+Sg': ['monituram'],
                '+Gen+Sg': ['moniturae'],
                '+Dat+Sg': ['moniturae'],
                '+Abl+Sg': ['monitura'],

                '+Nom+Pl': ['moniturae'],
                '+Voc+Pl': ['moniturae'],
                '+Acc+Pl': ['monituras'],
                '+Gen+Pl': ['moniturarum'],
                '+Dat+Pl': ['monituris'],
                '+Abl+Pl': ['monituris'],
            },
            '+Neut': {
                '+Nom+Sg': ['moniturum'],
                '+Voc+Sg': ['moniturum'],
                '+Acc+Sg': ['moniturum'],
                '+Gen+Sg': ['monituri'],
                '+Dat+Sg': ['monituro'],
                '+Abl+Sg': ['monituro'],

                '+Nom+Pl': ['monitura'],
                '+Voc+Pl': ['monitura'],
                '+Acc+Pl': ['monitura'],
                '+Gen+Pl': ['moniturorum'],
                '+Dat+Pl': ['monituris'],
                '+Abl+Pl': ['monituris'],
            },
        },
    },
    '+Ger': {
        '+Acc': ['monendum'],
        '+Gen': ['monendi'],
        '+Dat': ['monendo'],
        '+Abl': ['monendo'],
    },
    '+Gerv': {
        '+Masc': {
            '+Nom+Sg': ['monendus'],
            '+Voc+Sg': ['monende'],
            '+Acc+Sg': ['monendum'],
            '+Gen+Sg': ['monendi'],
            '+Dat+Sg': ['monendo'],
            '+Abl+Sg': ['monendo'],

            '+Nom+Pl': ['monendi'],
            '+Voc+Pl': ['monendi'],
            '+Acc+Pl': ['monendos'],
            '+Gen+Pl': ['monendorum'],
            '+Dat+Pl': ['monendis'],
            '+Abl+Pl': ['monendis'],
        },
        '+Fem': {
            '+Nom+Sg': ['monenda'],
            '+Voc+Sg': ['monenda'],
            '+Acc+Sg': ['monendam'],
            '+Gen+Sg': ['monendae'],
            '+Dat+Sg': ['monendae'],
            '+Abl+Sg': ['monenda'],

            '+Nom+Pl': ['monendae'],
            '+Voc+Pl': ['monendae'],
            '+Acc+Pl': ['monendas'],
            '+Gen+Pl': ['monendarum'],
            '+Dat+Pl': ['monendis'],
            '+Abl+Pl': ['monendis'],
        },
        '+Neut': {
            '+Nom+Sg': ['monendum'],
            '+Voc+Sg': ['monendum'],
            '+Acc+Sg': ['monendum'],
            '+Gen+Sg': ['monendi'],
            '+Dat+Sg': ['monendo'],
            '+Abl+Sg': ['monendo'],

            '+Nom+Pl': ['monenda'],
            '+Voc+Pl': ['monenda'],
            '+Acc+Pl': ['monenda'],
            '+Gen+Pl': ['monendorum'],
            '+Dat+Pl': ['monendis'],
            '+Abl+Pl': ['monendis'],
        },
    },
    '+SupI': ['monitum'],
    '+SupII': ['monitu'],
})
diag("%d" % Morph.formcount)
