#!/bin/sh
#BSUB -J calliope[1-9]
#BSUB -n 8
#BSUB -R "rusage[mem=100G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_%I.log

./sensi_submit_runs.sh.array.sh ${LSB_JOBINDEX}
