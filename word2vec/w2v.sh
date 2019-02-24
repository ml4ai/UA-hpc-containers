#!/bin/sh

W2VDIR=/trunk/
IN=$1
OUT=$2

time $W2VDIR/word2vec -train $IN -output $OUT -cbow 0 -size 10 -window 10 -negative 0 -hs 1 -sample 1e-3 -threads 12 -binary 0 -min-count 1
