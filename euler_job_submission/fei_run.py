# so, now, you can say python create_input.py -i [path_to_model_yaml] -o [path_to_output_nc] --scenario [scenario] from the command line to create the model NetCDF
# and python run.py -i [path_to_model_input_data_nc] -o [path_to_optimised_output_nc] to optimise it
# you then just need to include an extra script and argument in run.py to update the underlying model data with e.g. your sensitivity data before you run it


import create_input
import run

import os
import sys
import pdb

# pdb.set_trance()
# parent_path = '/Users/feiwufei/2022-02-08'
path_to_model_yaml = '2050/model/national/bio-model-2018.yaml'
# path_to_netcdf_of_model_inputs = os.path.join(parent_path, 'test_inputs.nc')
# path_to_netcdf_of_results = os.path.join(parent_path, 'test.results.nc')
# os.mkdir(path_to_netcdf_of_model_inputs, 0o777) # read/write by everyone
# os.mkdir(path_to_netcdf_of_results, 0o777) # read/write by everyone


# scenarios_list = ['res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0',
# 'res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0',
# 'res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,gas_storage',
# 'res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,gas_storage',
# 'res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,biofuel_supply_only_1',
# 'res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,biofuel_supply_only_1',
# 'res_1h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,biofuel_supply_only_1,gas_storage',
# 'res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,biofuel_supply_only_1,gas_storage',
# 'res_12h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0,biofuel_supply_only_1,gas_storage'
# ]
# scenarios_number = len(scenarios_list)
# print(scenarios_number)
# scenarios_string = 'res_12h,industry_fuel,transport,heat,config_overrides,gas_storage,link_cap_dynamic,freeze-hydro-capacities,add-biofuel,synfuel_transmission'

scenarios_string = sys.argv[1]
# print(scenarios_string)
# for scenarios_string in scenarios_list:
path_to_netcdf_of_model_inputs = 'input_nc/input_'+scenarios_string+'.nc'
path_to_netcdf_of_results = 'output_nc/out_'+scenarios_string+'.nc'

    
create_input.build_model(path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs) 
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)