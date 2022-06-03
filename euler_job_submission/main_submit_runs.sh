#!/bin/sh
#BSUB -J calliope[1-12]
#BSUB -n 6
#BSUB -R "rusage[mem=80G]"
#BSUB -W 12:00
#BSUB -r
#BSUB -o 0302_diesel_demand_2h_%I.log

./main_submit_runs.sh.array.sh ${LSB_JOBINDEX}
