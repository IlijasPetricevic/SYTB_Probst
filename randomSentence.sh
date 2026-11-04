#!/bin/bash

anzahl=$(wc -l < wordlist.txt)

wort1=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort2=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort3=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort4=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)
wort5=$(sed -n "$((RANDOM % anzahl + 1))p" wordlist.txt)

echo "$wort1 $wort2 $wort3 $wort4 $wort5"