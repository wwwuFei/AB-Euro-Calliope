#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_run.py resource_area_20,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    2) python fei_run.py resource_area_20,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1 ;;
    3) python fei_run.py resource_area_20,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage ;;
    4) python fei_run.py resource_area_15,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    5) python fei_run.py resource_area_15,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1 ;;
    6) python fei_run.py resource_area_15,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage ;;
 
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 6); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
