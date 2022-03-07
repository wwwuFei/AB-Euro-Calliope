#!/bin/sh
#BSUB -J calliope[1-6]
#BSUB -n 6
#BSUB -R "rusage[mem=80G]"
#BSUB -W 24:00
#BSUB -r
#BSUB -o log_0307_resource_area_%I.log

./resource_area.sh.array.sh ${LSB_JOBINDEX}
