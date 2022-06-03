#!/bin/sh
#BSUB -J calliope[1-5]
#BSUB -n 6
#BSUB -R "rusage[mem=60G]"
#BSUB -W 12:00
#BSUB -r
#BSUB -o log_2_sensi_opt_method_%I.log

./sensi_opt_res_.sh.array.sh ${LSB_JOBINDEX}
