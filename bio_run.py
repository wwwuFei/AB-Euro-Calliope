import sys

import create_input
import run


path_to_model_yaml = "2050/model/national/bio-model-2018.yaml"
scenarios_string = sys.argv[1]
path_to_netcdf_of_model_inputs = "input_nc/input_" + scenarios_string + ".nc"
path_to_netcdf_of_results = "output_nc/out_" + scenarios_string + ".nc"


create_input.build_model(
    path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs
)
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)
