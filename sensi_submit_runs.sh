#!/bin/sh
#BSUB -J calliope[1-10]
#BSUB -n 6
#BSUB -R "rusage[mem=100G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_sensi_%I.log

./sensi_submit_runs.sh.array.sh ${LSB_JOBINDEX}
