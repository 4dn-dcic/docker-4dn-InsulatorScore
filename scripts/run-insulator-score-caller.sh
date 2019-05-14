#!/bin/bash

INPUT=$1
OUTDIR=$2
BINSIZE=$3
WINDOWSIZE=$4
CUTOFF=$5


FILE_BASE=$(basename $INPUT)
FILE_NAME=${FILE_BASE%%.*}

if [ ! -d "$OUTDIR" ]
then
    mkdir $OUTDIR
fi

python /usr/local/bin/Script.py $INPUT $OUTDIR $FILE_NAME --binsize $BINSIZE --window $WINDOWSIZE --cutoff $CUTOFF
