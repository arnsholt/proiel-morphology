#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(71)

test_hash('hortor+Verb+Dep', {
    '+Pres+Ind': {
        '+1S+Pass': ['hortor'],
        '+2S+Pass': ['hortaris', 'hortare'],
        '+3S+Pass': ['hortatur'],
        '+1P+Pass': ['hortamur'],
        '+2P+Pass': ['hortamini'],
        '+3P+Pass': ['hortantur'],
    },
    '+Pres+Subj': {
        '+1S+Pass': ['horter'],
        '+2S+Pass': ['horteris', 'hortere'],
        '+3S+Pass': ['hortetur'],
        '+1P+Pass': ['hortemur'],
        '+2P+Pass': ['hortemini'],
        '+3P+Pass': ['hortentur'],
    },
    '+Impf+Ind': {
        '+1S+Pass': ['hortabar'],
        '+2S+Pass': ['hortabaris', 'hortabare'],
        '+3S+Pass': ['hortabatur'],
        '+1P+Pass': ['hortabamur'],
        '+2P+Pass': ['hortabamini'],
        '+3P+Pass': ['hortabantur'],
    },
    '+Impf+Subj': {
        '+1S+Pass': ['hortarer'],
        '+2S+Pass': ['hortareris', 'hortarere'],
        '+3S+Pass': ['hortaretur'],
        '+1P+Pass': ['hortaremur'],
        '+2P+Pass': ['hortaremini'],
        '+3P+Pass': ['hortarentur'],
    },
    '+Fut+Ind': {
        '+1S+Pass': ['hortabor'],
        '+2S+Pass': ['hortaberis', 'hortabere'],
        '+3S+Pass': ['hortabitur'],
        '+1P+Pass': ['hortabimur'],
        '+2P+Pass': ['hortabimini'],
        '+3P+Pass': ['hortabuntur'],
    },
    '+Pres+Impv': {
        '+2S+Pass': ['hortare'],
        '+2P+Pass': ['hortamini'],
    },
    '+Inf': {
        '+Pres+Pass': ['hortari'],
    }
})
