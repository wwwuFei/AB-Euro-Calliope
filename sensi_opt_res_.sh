#!/bin/sh
#BSUB -J calliope[1-10]
#BSUB -n 6
#BSUB -R "rusage[mem=100G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_sensi_opt_res_%I.log

./sensi_opt_res_.sh.array.sh ${LSB_JOBINDEX}
