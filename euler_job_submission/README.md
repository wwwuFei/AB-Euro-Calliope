# Sector-coupled Euro-Calliope national/subnational-scale pre-built models
## Built using Euro-Calliope v2.0 fork workflow commit hash: cadc0712de0a451f1cb1acefe60563ce636fe918

This model is pre-packaged and ready to be loaded into Calliope, based on 2010 - 2018 input data. To run the model you will need to do the following:

a. Install a specific conda environment to be working with the correct version of Calliope (`conda env create -f requirements.yml`)

b. pick your resolution. The resolution-specific model file is found under the resolution name. You can choose between "national" (35 model regions) and "eurospores" (98 model regions).

c. Include specific scenarios to pick up the relevant sectors. My base go-to at the moment is `"industry_fuel,transport,heat,config_overrides,res_12h,gas_storage,link_cap_dynamic,freeze-hydro-capacities,add-biofuel,synfuel_transmission"` where:

* `industry_fuel`: Includes all non-electrical industry demands distributed by region, and the necessary technologies to generate those fuels synthetically. This includes e.g. annual methanol requirements for the chemical industry.

* `transport`: This ensures ICE and EV light and heavy vehicle technologies and annual demands are in the model. It also includes reference to constraints required to make smart-charging of EVs work (e.g. weekly demand requirements).

* `heat`: This ensures that all heat provision technologies and hourly demands are in the model. Carriers added are `heat` (space heating and hot water) and `cooking`. Technologies added can be found in `heat-techs.yaml`.

* `config_overrides`: This includes high-level simplifications, such as removal of technologies that are considered redundant (e.g. less interesting combined heat and power technologies).

* `res_12h`: Sets the model with a 12h resolution. Can be omitted or can be one of `res_2h`, `res_3h`, `res_6h`, `res_12h`. The full hourly "eurospores" resolution model takes ~2 days to complete. The full hourly "national" resolution model takes less than a day.

* `gas_storage`: Includes underground methane storage facilities, based on latest data on a national level. Can be omitted to remove the option of this technology.

* `link_cap_dynamic`: Sets a limit on transmission line capacities. The limits are chosen subjectively based on current capacity, such that lines with smaller current capacities can proportionally increase much more (e.g. 100x) than larger lines (e.g. 2x). See `national/links.yaml` for other override options to apply here.

* `freeze-hydro-capacities`: Sets hydro capacities to equal "today's" capacities. This seems more reasonable than setting current capacities as upper limits, as this causes the model to install no hydro.

* `add-biofuel`: Enables a biofuel supply stream with a distinct `biofuel` carrier, with annual limits on biofuel that can be provided (based on JRC residuals). This differs from Euro-Calliope v1.0 which is a black box technology converting biofuel to electricity directly.

* `synfuel_transmission`: Enables methane and diesel to be distributed around all model regions, without losses. This can be useful to ensure that if diesel/methane is produced in region A for transport/heating, it can be consumed in region B.

In addition, you can model 2030 or 2050 projection years. To model the 2030 year, you need to add some additional overrides, to get: `industry_fuel,transport,heat,config_overrides,gas_storage,link_cap_1x,freeze-hydro-capacities,synfuel_transmission,heat_techs_2030,renewable_techs_2030,transformation_techs_2030,2030_neutral,fossil-fuel-supply,res_12h,add-biofuel,coal_supply`. Here, various technology overrides are applied, along with fossil fuel technologies and a corresponding emission cap scenario.

d. pick your run year, by pointing to the relevant model config file (e.g. `model-2018.yaml` for the 2018 weather year).

e. run the model via the dedicated scripts found in this directory. This is a new part of the process, since we now rely on a new version of Calliope with all custom euro-calliope constraints added as 'custom constraints'. These scripts have been copied directly from snakemake, but you can load and run them in an interactive session / with your own python script to call them:

```python
import create_input
create_input.build_model(path_to_model_yaml, scenarios_string, path_to_netcdf_of_model_inputs)
```

```python
import run
run.run_model(path_to_netcdf_of_model_inputs, path_to_netcdf_of_results)
```