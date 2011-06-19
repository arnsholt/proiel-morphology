#!/usr/bin/env python

from morph import *
from TAP.Simple import *

plan(211)

test_hash('sum+Verb', {
    '+Pres+Ind': {
        '+1st+Sg+Act': ['sum'],
        '+2nd+Sg+Act': ['es'],
        '+3rd+Sg+Act': ['est'],
        '+1st+Pl+Act': ['sumus'],
        '+2nd+Pl+Act': ['estis'],
        '+3rd+Pl+Act': ['sunt'],
    },
    '+Pres+Subj': {
        '+1st+Sg+Act': ['sim'],
        '+2nd+Sg+Act': ['sis'],
        '+3rd+Sg+Act': ['sit'],
        '+1st+Pl+Act': ['simus'],
        '+2nd+Pl+Act': ['sitis'],
        '+3rd+Pl+Act': ['sint'],
    },
    '+Fut+Ind': {
        '+1st+Sg+Act': ['ero'],
        '+2nd+Sg+Act': ['eris'],
        '+3rd+Sg+Act': ['erit'],
        '+1st+Pl+Act': ['erimus'],
        '+2nd+Pl+Act': ['eritis'],
        '+3rd+Pl+Act': ['erunt'],
    },
    '+Impf+Ind': {
        '+1st+Sg+Act': ['eram'],
        '+2nd+Sg+Act': ['eras'],
        '+3rd+Sg+Act': ['erat'],
        '+1st+Pl+Act': ['eramus'],
        '+2nd+Pl+Act': ['eratis'],
        '+3rd+Pl+Act': ['erant'],
    },
    '+Impf+Subj': {
        '+1st+Sg+Act': ['essem'],
        '+2nd+Sg+Act': ['esses'],
        '+3rd+Sg+Act': ['esset'],
        '+1st+Pl+Act': ['essemus'],
        '+2nd+Pl+Act': ['essetis'],
        '+3rd+Pl+Act': ['essent'],
    },
    '+Perf+Ind': {
        '+1st+Sg+Act': ['fui'],
        '+2nd+Sg+Act': ['fuisti'],
        '+3rd+Sg+Act': ['fuit'],
        '+1st+Pl+Act': ['fuimus'],
        '+2nd+Pl+Act': ['fuistis'],
        '+3rd+Pl+Act': ['fuerunt', 'fuere'],
    },
    '+Perf+Subj': {
        '+1st+Sg+Act': ['fuerim'],
        '+2nd+Sg+Act': ['fueris'],
        '+3rd+Sg+Act': ['fuerit'],
        '+1st+Pl+Act': ['fuerimus'],
        '+2nd+Pl+Act': ['fueritis'],
        '+3rd+Pl+Act': ['fuerint'],
    },
    '+FutII+Ind': {
        '+1st+Sg+Act': ['fuero'],
        '+2nd+Sg+Act': ['fueris'],
        '+3rd+Sg+Act': ['fuerit'],
        '+1st+Pl+Act': ['fuerimus'],
        '+2nd+Pl+Act': ['fueritis'],
        '+3rd+Pl+Act': ['fuerint'],
    },
    '+Pqp+Ind': {
        '+1st+Sg+Act': ['fueram'],
        '+2nd+Sg+Act': ['fueras'],
        '+3rd+Sg+Act': ['fuerat'],
        '+1st+Pl+Act': ['fueramus'],
        '+2nd+Pl+Act': ['fueratis'],
        '+3rd+Pl+Act': ['fuerant'],
    },
    '+Pqp+Subj': {
        '+1st+Sg+Act': ['fuissem'],
        '+2nd+Sg+Act': ['fuisses'],
        '+3rd+Sg+Act': ['fuisset'],
        '+1st+Pl+Act': ['fuissemus'],
        '+2nd+Pl+Act': ['fuissetis'],
        '+3rd+Pl+Act': ['fuissent'],
    },
    '+Inf': {
        '+Pres+Act': ['esse'],
        '+Perf+Act': ['fuisse'],
        '+Fut+Act': ['fore'],
    },
    '+Pres+Impv': {
        '+2nd+Sg+Act': ['es'],
        '+2nd+Pl+Act': ['este'],
    },
    '+Fut+Impv': {
        '+2nd+Sg+Act': ['esto'],
        '+3rd+Sg+Act': ['esto'],
        '+2nd+Pl+Act': ['estote'],
        '+3rd+Pl+Act': ['sunto'],
    },
    '+Part+Fut': {
        '+Masc': {
            '+Nom+Sg': ['futurus'],
            '+Voc+Sg': ['future'],
            '+Acc+Sg': ['futurum'],
            '+Gen+Sg': ['futuri'],
            '+Dat+Sg': ['futuro'],
            '+Abl+Sg': ['futuro'],

            '+Nom+Pl': ['futuri'],
            '+Voc+Pl': ['futuri'],
            '+Acc+Pl': ['futuros'],
            '+Gen+Pl': ['futurorum'],
            '+Dat+Pl': ['futuris'],
            '+Abl+Pl': ['futuris'],
        },
        '+Fem': {
            '+Nom+Sg': ['futura'],
            '+Voc+Sg': ['futura'],
            '+Acc+Sg': ['futuram'],
            '+Gen+Sg': ['futurae'],
            '+Dat+Sg': ['futurae'],
            '+Abl+Sg': ['futura'],

            '+Nom+Pl': ['futurae'],
            '+Voc+Pl': ['futurae'],
            '+Acc+Pl': ['futuras'],
            '+Gen+Pl': ['futurarum'],
            '+Dat+Pl': ['futuris'],
            '+Abl+Pl': ['futuris'],
        },
        '+Neut': {
            '+Nom+Sg': ['futurum'],
            '+Voc+Sg': ['futurum'],
            '+Acc+Sg': ['futurum'],
            '+Gen+Sg': ['futuri'],
            '+Dat+Sg': ['futuro'],
            '+Abl+Sg': ['futuro'],

            '+Nom+Pl': ['futura'],
            '+Voc+Pl': ['futura'],
            '+Acc+Pl': ['futura'],
            '+Gen+Pl': ['futurorum'],
            '+Dat+Pl': ['futuris'],
            '+Abl+Pl': ['futuris'],
        },
    },
})
diag("%d" % Morph.formcount)
