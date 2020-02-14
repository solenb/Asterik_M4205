#!/bin/bash
temp=$(weather LFMU --headers=temperature | grep -Eo '\-?[1-9]* C' | sed 's/ C//g')
dew=$(weather LFMU -v | grep 'Dew' | grep -Eo '\-?[1-9]* C' | sed 's/ C//g')
echo -e "Il fais $temp degré celsius à béziers" > meteo.txt
echo -e "Le point de rosée est à $dew degré celsius" >> meteo.txt
chmod 666 meteo.txt
