#!/bin/bash 
for year in {1973..2023}
do
    rm -f ../../CLIMATE_DATA/PERTH/temp_${year}.csv
    awk -F '","' '{print $2, $14}' < ../../CLIMATE_DATA/PERTH/94610099999_${year}.csv | tail -n +2 >> ../../CLIMATE_DATA/PERTH/temp_${year}.csv
done