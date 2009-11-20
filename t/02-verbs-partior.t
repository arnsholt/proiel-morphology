#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(71)

test_hash('partior+Verb+Dep', {
    '+Pres+Ind': {
        '+1S+Pass': ['partior'],
        '+2S+Pass': ['partiris', 'partire'],
        '+3S+Pass': ['partitur'],
        '+1P+Pass': ['partimur'],
        '+2P+Pass': ['partimini'],
        '+3P+Pass': ['partiuntur'],
    },
    '+Pres+Subj': {
        '+1S+Pass': ['partiar'],
        '+2S+Pass': ['partiaris', 'partiare'],
        '+3S+Pass': ['partiatur'],
        '+1P+Pass': ['partiamur'],
        '+2P+Pass': ['partiamini'],
        '+3P+Pass': ['partiantur'],
    },
    '+Impf+Ind': {
        '+1S+Pass': ['partiebar'],
        '+2S+Pass': ['partiebaris', 'partiebare'],
        '+3S+Pass': ['partiebatur'],
        '+1P+Pass': ['partiebamur'],
        '+2P+Pass': ['partiebamini'],
        '+3P+Pass': ['partiebantur'],
    },
    '+Impf+Subj': {
        '+1S+Pass': ['partirer'],
        '+2S+Pass': ['partireris', 'partirere'],
        '+3S+Pass': ['partiretur'],
        '+1P+Pass': ['partiremur'],
        '+2P+Pass': ['partiremini'],
        '+3P+Pass': ['partirentur'],
    },
    '+Fut+Ind': {
        '+1S+Pass': ['partiar'],
        '+2S+Pass': ['partieris', 'partiere'],
        '+3S+Pass': ['partietur'],
        '+1P+Pass': ['partiemur'],
        '+2P+Pass': ['partiemini'],
        '+3P+Pass': ['partientur'],
    },
    '+Pres+Impv': {
        '+2S+Pass': ['partire'],
        '+2P+Pass': ['partimini'],
    },
    '+Inf': {
        '+Pres+Pass': ['partiri'],
    }
})
