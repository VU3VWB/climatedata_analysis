#!/bin/bash 
for year in {1980..2022}
do
    rm -f ../../CLIMATE_DATA/CALICUT/temp_${year}.csv
    awk -F '","' '{print $2, $14}' < ../../CLIMATE_DATA/CALICUT/43314099999_${year}.csv | tail -n +2 >> ../../CLIMATE_DATA/CALICUT/temp_${year}.csv
done