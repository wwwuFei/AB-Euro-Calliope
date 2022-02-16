#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_sensi_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_2 ;;
    2) python fei_sensi_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage,biofuel_supply_only_2 ;;

    3) python fei_sensi_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_max,biofuel_supply_only_2 ;;
    4) python fei_sensi_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_max,biofuel_supply_only_2,gas_storage ;;

 
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 4); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
