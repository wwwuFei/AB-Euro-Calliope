#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_run.py bio_potential_org0_agr_manure_msw_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities ;;
    2) python fei_run.py bio_potential_org0_agr_manure_msw_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,biofuel_supply_only_1 ;;
    3) python fei_run.py bio_potential_org0_agr_manure_msw_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,gas_storage ;;
    4) python fei_run.py bio_potential_org0_all_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities ;;
    5) python fei_run.py bio_potential_org0_all_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,biofuel_supply_only_1 ;;
    6) python fei_run.py bio_potential_org0_all_equals,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,gas_storage ;;
 
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 6); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
