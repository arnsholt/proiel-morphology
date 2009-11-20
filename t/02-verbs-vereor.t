#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(71)

test_hash('vereor+Verb+Dep', {
    '+Pres+Ind': {
        '+1S+Pass': ['vereor'],
        '+2S+Pass': ['vereris', 'verere'],
        '+3S+Pass': ['veretur'],
        '+1P+Pass': ['veremur'],
        '+2P+Pass': ['veremini'],
        '+3P+Pass': ['verentur'],
    },
    '+Pres+Subj': {
        '+1S+Pass': ['verear'],
        '+2S+Pass': ['verearis', 'vereare'],
        '+3S+Pass': ['vereatur'],
        '+1P+Pass': ['vereamur'],
        '+2P+Pass': ['vereamini'],
        '+3P+Pass': ['vereantur'],
    },
    '+Impf+Ind': {
        '+1S+Pass': ['verebar'],
        '+2S+Pass': ['verebaris', 'verebare'],
        '+3S+Pass': ['verebatur'],
        '+1P+Pass': ['verebamur'],
        '+2P+Pass': ['verebamini'],
        '+3P+Pass': ['verebantur'],
    },
    '+Impf+Subj': {
        '+1S+Pass': ['vererer'],
        '+2S+Pass': ['verereris', 'vererere'],
        '+3S+Pass': ['vereretur'],
        '+1P+Pass': ['vereremur'],
        '+2P+Pass': ['vereremini'],
        '+3P+Pass': ['vererentur'],
    },
    '+Fut+Ind': {
        '+1S+Pass': ['verebor'],
        '+2S+Pass': ['vereberis', 'verebere'],
        '+3S+Pass': ['verebitur'],
        '+1P+Pass': ['verebimur'],
        '+2P+Pass': ['verebimini'],
        '+3P+Pass': ['verebuntur'],
    },
    '+Pres+Impv': {
        '+2S+Pass': ['verere'],
        '+2P+Pass': ['veremini'],
    },
    '+Inf': {
        '+Pres+Pass': ['vereri'],
    }
})
