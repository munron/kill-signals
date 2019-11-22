#!/bin/sh

SIGNALS=(`kill -l`)

for ((i = 0; i < ${#SIGNALS[@]}; i++)) {
    sleep 0.3
    ./loop &
    kill -s "${SIGNALS[i]}" $!
    kill -9 $!
    echo "SIGNALS[$i] = ${SIGNALS[i]}"
}

