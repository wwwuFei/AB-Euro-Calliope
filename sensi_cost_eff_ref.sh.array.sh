#!/bin/sh

function process_case () {
    case "$1" in

    1) python fei_sensi_run.py hydrogen_trans_cost_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    2) python fei_sensi_run.py hydrogen_trans_cost_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    3) python fei_sensi_run.py hydrogen_trans_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    4) python fei_sensi_run.py hydrogen_trans_cost_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    5) python fei_sensi_run.py hydrogen_trans_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    6) python fei_sensi_run.py hydrogen_trans_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    7) python fei_sensi_run.py hydrogen_trans_cost_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    8) python fei_sensi_run.py electrolysis_cost_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    9) python fei_sensi_run.py electrolysis_cost_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    10) python fei_sensi_run.py electrolysis_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    11) python fei_sensi_run.py electrolysis_cost_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    12) python fei_sensi_run.py electrolysis_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    13) python fei_sensi_run.py electrolysis_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    14) python fei_sensi_run.py electrolysis_cost_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    15) python fei_sensi_run.py storage_cost_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    16) python fei_sensi_run.py storage_cost_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    17) python fei_sensi_run.py storage_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    18) python fei_sensi_run.py storage_cost_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    19) python fei_sensi_run.py storage_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    20) python fei_sensi_run.py storage_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    21) python fei_sensi_run.py storage_cost_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    22) python fei_sensi_run.py biomass_supply_cost_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    23) python fei_sensi_run.py biomass_supply_cost_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    24) python fei_sensi_run.py biomass_supply_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    25) python fei_sensi_run.py biomass_supply_cost_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    26) python fei_sensi_run.py biomass_supply_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    27) python fei_sensi_run.py biomass_supply_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    28) python fei_sensi_run.py biomass_supply_cost_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    29) python fei_sensi_run.py bio_trans_cost_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    30) python fei_sensi_run.py bio_trans_cost_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    31) python fei_sensi_run.py bio_trans_cost_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    32) python fei_sensi_run.py bio_trans_cost_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    33) python fei_sensi_run.py bio_trans_cost_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    34) python fei_sensi_run.py bio_trans_cost_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    35) python fei_sensi_run.py bio_trans_cost_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    36) python fei_sensi_run.py electrolysis_eff_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    37) python fei_sensi_run.py electrolysis_eff_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    38) python fei_sensi_run.py electrolysis_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    39) python fei_sensi_run.py electrolysis_eff_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    40) python fei_sensi_run.py electrolysis_eff_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    41) python fei_sensi_run.py electrolysis_eff_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    42) python fei_sensi_run.py electrolysis_eff_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    43) python fei_sensi_run.py storage_eff_70_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    44) python fei_sensi_run.py storage_eff_80_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    45) python fei_sensi_run.py storage_eff_90_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    46) python fei_sensi_run.py storage_eff_100_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    47) python fei_sensi_run.py storage_eff_110_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    48) python fei_sensi_run.py storage_eff_120_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
    49) python fei_sensi_run.py storage_eff_130_perc,res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals ;;
            
    esac
}

if [[ $# -eq 0 ]] ; then
    echo No parameter given, running all runs sequentially...
    for i in $(seq 1 49); do process_case $i; done
else
    echo Running run $1
    process_case $1
fi
