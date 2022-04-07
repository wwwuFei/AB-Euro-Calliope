#!/bin/sh
#BSUB -J calliope[1-19]
#BSUB -n 6
#BSUB -R "rusage[mem=60G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_sensi_weather_%I.log

./sensi_weather_year.sh.array.sh ${LSB_JOBINDEX}
