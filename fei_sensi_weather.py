# so, now, you can say python create_input.py -i [path_to_model_yaml] -o [path_to_output_nc] --scenario [scenario] from the command line to create the model NetCDF
# and python run.py -i [path_to_model_input_data_nc] -o [path_to_optimised_output_nc] to optimise it
# you then just need to include an extra script and argument in run.py to update the underlying model data with e.g. your sensitivity data before you run it


import create_input
import run

import os
import sys
import pdb

# pdb.set_trance()

i = sys.argv[1]
scenarios_string = 'res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals'
# for i in range(2000,2019):
path_to_model_yaml = '2050/model/national/bio-model-'+str(i)+'.yaml'

path_to_netcdf_of_model_inputs = 'sensitivity/input_'+str(i)+scenarios_string+'.nc'
path_to_netcdf_of_results = 'sensitivity/out_'+str(i)+scenarios_string+'.nc'

    
create_input.build_model(path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs) 
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)