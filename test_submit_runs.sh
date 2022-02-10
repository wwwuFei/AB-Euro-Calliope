#!/bin/sh
#BSUB -J calliope[1-9]
#BSUB -n 0
#BSUB -R "rusage[mem=230G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_%I.log

./submit_runs.sh.array.sh ${LSB_JOBINDEX}
