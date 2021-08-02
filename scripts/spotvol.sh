#!/bin/bash

CurrVol=$( spt list -d | head -n 1 | /home/lare/.config/scripts/numbers )
STEP=5
NewVol=0

[[ "$1" == "Down" || "$1" == "-" ]] && NewVol=$(( CurrVol - STEP  ))
[[ "$1" == "Up" || "$1" == "+" ]] && NewVol=$(( CurrVol + STEP  ))
[[ "${NewVol:0:1}" == "-" ]] && NewVol=0 
[[ "$NewVol" -gt 100 ]] && NewVol=100

spt pb -v "$NewVol"
