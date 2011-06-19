#!/bin/bash

DIST=morphology

mkdir $DIST
cp nouns-*.txt verbs-*.txt README Makefile $DIST

mkdir $DIST/build
cp build/* $DIST/build

mkdir $DIST/t
cp t/* $DIST/t

#mkdir $DIST/web
#cp web/* $DIST/web

mkdir $DIST/vim
cp vim/* $DIST/vim

tar czvf $DIST.tar.gz $DIST
rm -r $DIST
