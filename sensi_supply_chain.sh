#!/bin/sh
#BSUB -J calliope[1-4]
#BSUB -n 8
#BSUB -R "rusage[mem=100G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_sensi_supply_chain_%I.log

./sensi_supply_chain.sh.array.sh ${LSB_JOBINDEX}
