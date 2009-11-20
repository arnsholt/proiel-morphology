#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(71)

test_hash('sequor+Verb+Dep', {
    '+Pres+Ind': {
        '+1S+Pass': ['sequor'],
        '+2S+Pass': ['sequeris', 'sequere'],
        '+3S+Pass': ['sequitur'],
        '+1P+Pass': ['sequimur'],
        '+2P+Pass': ['sequimini'],
        '+3P+Pass': ['sequuntur'],
    },
    '+Pres+Subj': {
        '+1S+Pass': ['sequar'],
        '+2S+Pass': ['sequaris', 'sequare'],
        '+3S+Pass': ['sequatur'],
        '+1P+Pass': ['sequamur'],
        '+2P+Pass': ['sequamini'],
        '+3P+Pass': ['sequantur'],
    },
    '+Impf+Ind': {
        '+1S+Pass': ['sequebar'],
        '+2S+Pass': ['sequebaris', 'sequebare'],
        '+3S+Pass': ['sequebatur'],
        '+1P+Pass': ['sequebamur'],
        '+2P+Pass': ['sequebamini'],
        '+3P+Pass': ['sequebantur'],
    },
    '+Impf+Subj': {
        '+1S+Pass': ['sequerer'],
        '+2S+Pass': ['sequereris', 'sequerere'],
        '+3S+Pass': ['sequeretur'],
        '+1P+Pass': ['sequeremur'],
        '+2P+Pass': ['sequeremini'],
        '+3P+Pass': ['sequerentur'],
    },
    '+Fut+Ind': {
        '+1S+Pass': ['sequar'],
        '+2S+Pass': ['sequeris', 'sequere'],
        '+3S+Pass': ['sequetur'],
        '+1P+Pass': ['sequemur'],
        '+2P+Pass': ['sequemini'],
        '+3P+Pass': ['sequentur'],
    },
    '+Pres+Impv': {
        '+2S+Pass': ['sequere'],
        '+2P+Pass': ['sequimini'],
    },
    '+Inf': {
        '+Pres+Pass': ['sequi'],
    }
})
