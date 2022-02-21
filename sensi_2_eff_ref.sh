#!/bin/sh
#BSUB -J calliope[1-12]
#BSUB -n 6
#BSUB -R "rusage[mem=60G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_2_sensi_eff_ref_%I.log

./sensi_2_eff_ref.sh.array.sh ${LSB_JOBINDEX}
