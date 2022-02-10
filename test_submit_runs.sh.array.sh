#!/bin/sh

function process_case () {
    case "$1" in

    1) python run fei_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    2) python run fei_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    3) python run fei_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage ;;
    4) python run fei_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage ;;
    5) python run fei_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1 ;;
    6) python run fei_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1 ;;
    7) python run fei_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1,gas_storage ;;
    8) python run fei_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1,gas_storage ;;
    9) python run fei_run.py res_12h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1,gas_storage ;;
      
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 9); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
