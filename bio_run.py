# so, now, you can say python create_input.py -i [path_to_model_yaml] -o [path_to_output_nc] --scenario [scenario] from the command line to create the model NetCDF
# and python run.py -i [path_to_model_input_data_nc] -o [path_to_optimised_output_nc] to optimise it
# you then just need to include an extra script and argument in run.py to update the underlying model data with e.g. your sensitivity data before you run it


import create_input
import run

import os
import sys
import pdb

path_to_model_yaml = '2050/model/national/bio-model-2018.yaml'
scenarios_string = sys.argv[1]
path_to_netcdf_of_model_inputs = 'input_nc/input_'+scenarios_string+'.nc'
path_to_netcdf_of_results = 'output_nc/out_'+scenarios_string+'.nc'

    
create_input.build_model(path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs) 
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)