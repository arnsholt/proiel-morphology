#!/usr/bin/python

from morph import *
from TAP.Simple import *

plan(208)

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
    }
})