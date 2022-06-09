# Ancillary-Bioenergy Version of Sector-coupled Euro-Calliope Pre-built Model (AB-Euro-Calliope)

This is the modified version of the sector-coupled Euro-Calliope national pre-built model [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5774988.svg)](https://doi.org/10.5281/zenodo.5774988) with addtional ancillary bioenergy technologies, detailed feedstocks, and new overrides. This model version is dedicated to [[Link to AB paper]](https://). We refer to it as `AB-Euro-Calliope` hereafter.

Same as in the original model, `AB-Euro-Calliope` is pre-packaged and ready to be loaded into Calliope model. To configue the environment and run the model, you will need to do the following:

a. Install a specific conda environment to be working with the correct version of Calliope (`conda env create -f requirements.yml`)

b. Pick up the weather year of your choice by specifying the right model file. Our default weather year is 2018, so in that case you will need to run `./2050/model/natioal/bio-model-2018.yaml`

c.1. Include specific strings of overrides to to reproduce the same scenarios analysed in our paper: 

* `2050 Reference`: This is our refernce scenario for default settings without addtional infrasturcture/utilisation constraints `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals`

* `BioDistribution`

* `GasStorage`

* `FullUtiAgr`

* `FullUtiAll`

c.2. For a brief introduction to essential overrides and what they refer to in the model:

----------------------------------------------------------------------------------

* `industry_fuel`: Includes all non-electrical industry demands distributed by region, and the necessary technologies to generate those fuels synthetically. This includes e.g. annual methanol requirements for the chemical industry.

* `transport`: This ensures ICE and EV light and heavy vehicle technologies and annual demands are in the model. It also includes reference to constraints required to make smart-charging of EVs work (e.g. weekly demand requirements).

* `heat`: This ensures that all heat provision technologies and hourly demands are in the model. Carriers added are `heat` (space heating and hot water) and `cooking`. Technologies added can be found in `heat-techs.yaml`.

* `config_overrides`: This includes high-level simplifications, such as removal of technologies that are considered redundant (e.g. less interesting combined heat and power technologies).

* `res_12h`: Sets the model with a 12h resolution. Can be omitted or can be one of `res_2h`, `res_3h`, `res_6h`, `res_12h`. The full hourly "eurospores" resolution model takes ~2 days to complete. The full hourly "national" resolution model takes less than a day.

* `gas_storage`: Includes underground methane storage facilities, based on latest data on a national level. Can be omitted to remove the option of this technology.

* `link_cap_dynamic`: Sets a limit on transmission line capacities. The limits are chosen subjectively based on current capacity, such that lines with smaller current capacities can proportionally increase much more (e.g. 100x) than larger lines (e.g. 2x). See `national/links.yaml` for other override options to apply here.

* `freeze-hydro-capacities`: Sets hydro capacities to equal "today's" capacities. This seems more reasonable than setting current capacities as upper limits, as this causes the model to install no hydro.

----------------------------------------------------------------------------------

d.1. Run the model via the dedicated scripts found in this directory. This is a new part of the process, since we now rely on a new version of Calliope with all custom euro-calliope constraints added as 'custom constraints'. These scripts have been copied directly from snakemake, but you can load and run them in an interactive session / with your own python script to call them:

```python
import create_input
create_input.build_model(path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs)
```

```python
import run
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)

```

d.2. Alternatively, you can also use the `bio-run.py` to complete the work of both scripts (`create_input.py` and `run.py`) and pass scenarios strings on to the model, as introduced below:

----------------------------------------------------------------------------------

An example of how to run our `2050 Reference` scenario at 2-hour resolution for the default year 2018 in just one line useing `bio-run.py`: 

`python bio_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities`

The output files will be automatically stored in a new folder called `output_nc` named with `out_YourScenarios.nc`. In this example of `2050 Reference`, it will be `out_res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals`

----------------------------------------------------------------------------------

Fei Wu @Delft, 20220609
