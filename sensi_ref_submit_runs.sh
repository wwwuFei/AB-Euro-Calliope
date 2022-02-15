#!/bin/sh
#BSUB -J calliope[1-49]
#BSUB -n 6
#BSUB -R "rusage[mem=80G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_sensi_ref_%I.log

./sensi_ref_submit_runs.sh.array.sh ${LSB_JOBINDEX}
