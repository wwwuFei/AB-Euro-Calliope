#!/bin/sh

function process_case () {
    case "$1" in

1) python fei_sensi_run.py bio_trans_eff_95_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
2) python fei_sensi_run.py bio_trans_eff_105_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
3) python fei_sensi_run.py bio_trans_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
4) python fei_sensi_run.py bio_trans_eff_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
5) python fei_sensi_run.py bio_trans_eff_85_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
6) python fei_sensi_run.py bio_trans_eff_115_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
7) python fei_sensi_run.py hydrogen_trans_eff_95_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
8) python fei_sensi_run.py hydrogen_trans_eff_105_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
9) python fei_sensi_run.py hydrogen_trans_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
10) python fei_sensi_run.py hydrogen_trans_eff_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
11) python fei_sensi_run.py hydrogen_trans_eff_85_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
12) python fei_sensi_run.py hydrogen_trans_eff_115_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
13) python fei_sensi_run.py electrolysis_eff_95_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
14) python fei_sensi_run.py electrolysis_eff_105_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
15) python fei_sensi_run.py electrolysis_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
16) python fei_sensi_run.py electrolysis_eff_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
17) python fei_sensi_run.py electrolysis_eff_85_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
18) python fei_sensi_run.py electrolysis_eff_115_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 18); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
