#!/bin/sh

function process_case () {
    case "$1" in

1) python fei_sensi_run.py bio_trans_eff_105_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
2) python fei_sensi_run.py bio_trans_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
3) python fei_sensi_run.py electrolysis_eff_85_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
4) python fei_sensi_run.py biomass_supply_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
5) python fei_sensi_run.py biomass_supply_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
6) python fei_sensi_run.py biomass_supply_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
7) python fei_sensi_run.py bio_trans_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
8) python fei_sensi_run.py electrolysis_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 8); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
