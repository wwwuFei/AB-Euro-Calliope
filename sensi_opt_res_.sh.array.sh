#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_sensi_run.py opt_method_0,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    2) python fei_sensi_run.py opt_method_1,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    3) python fei_sensi_run.py opt_method_2,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    4) python fei_sensi_run.py opt_method_3,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    5) python fei_sensi_run.py opt_method_4,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    6) python fei_sensi_run.py res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    7) python fei_sensi_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    8) python fei_sensi_run.py res_3h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    9) python fei_sensi_run.py res_6h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    10) python fei_sensi_run.py res_12h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;

            
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 10); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
