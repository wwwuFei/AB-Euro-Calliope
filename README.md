[![CC BY 4.0][cc-by-image]][cc-by]

# AB-Euro-Calliope

_Ancillary Bioenergy Version of Sector-coupled Euro-Calliope Pre-built Model_

`AB-Euro-Calliope` is the modified version of the sector-coupled Euro-Calliope national pre-built model [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5774988.svg)](https://doi.org/10.5281/zenodo.5774988) with additional ancillary bioenergy technologies, detailed feedstocks, and new overrides. This model version is used in the paper entitled _Strategic uses for ancillary bioenergy in a carbon-neutral and fossil-free 2050 European energy system_.

## Instructions

`AB-Euro-Calliope` is pre-packaged and ready to be loaded into Calliope. To configure the environment and run the model, you will need to do the following:

* Install a the conda environment to be working with the correct version of Calliope (`conda env create -f requirements.yml`)

* Download all `.csv files` from the original pre-built as they do not fit into the git repo here. Be careful about their relative directory! [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5774988.svg)](https://doi.org/10.5281/zenodo.5774988)

* Use `bio_run.py` to launch a model run. An example of how to run our `2050 Reference` scenario at 2-hour resolution for the default weather year 2018: `python bio_run.py res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities`

You can use a different weather year by chaning the reference to `2050/model/national/bio-model-2018.yaml` inside `bio_run.py`.

All custom constraints beyond built-in Calliope 0.6.8 constraints are defined and built in the file `run.py`. `create_input.py` is a helper script. Both of these are called by `bio_run.py`.

See below for an overview of the combination of overrides used to build the scenarios presented in the paper.

After running `bio_run.py`, output files will be stored in a new folder called `output_nc` with the filename template `out_{your_overrides}.nc`. In the above example of running `2050 Reference`, the file name will be `out_res_2h,industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals.nc`.

## Scenarios

These scenarios are defined in the model as combinations of [overrides](#overrides):

* `2050 Reference`: This is our refernce scenario for default settings without addtional infrastructure/utilisation constraints `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals`

* `BioDistribution`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,biofuel_supply_only_1`

* `GasStorage`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,gas_storage`

* `FullUtiAgr`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_agr_manure_msw_equals`

* `FullUtiAll`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_all_equals`

* `NoUti`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,no-bio-new`

* `NoNuclear`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_msw_equals,no-nuclear`

* `DedicatedBiomass`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacitiesbio_potential_org0_msw_equals,miscanthus`

* `AllBECCS`: `industry_fuel,transport,heat,config_overrides,link_cap_dynamic,freeze-hydro-capacities,bio_potential_org0_all_equals,all_bio_for_ccs`


## Overrides

* `industry_fuel`: Includes all non-electrical industry demands distributed by region, and the necessary technologies to generate those fuels synthetically. This includes e.g. annual methanol requirements for the chemical industry.

* `transport`: This ensures ICE and EV light and heavy vehicle technologies and annual demands are in the model. It also includes reference to constraints required to make smart-charging of EVs work (e.g. weekly demand requirements).

* `heat`: This ensures that all heat provision technologies and hourly demands are in the model. Carriers added are `heat` (space heating and hot water) and `cooking`. Technologies added can be found in `heat-techs.yaml`.

* `config_overrides`: This includes high-level simplifications, such as removal of technologies that are considered redundant (e.g. less interesting combined heat and power technologies).

* `res_12h`: Sets the model with a 12h resolution. Can be omitted or can be one of `res_2h`, `res_3h`, `res_6h`, `res_12h`. The full hourly "eurospores" resolution model takes ~2 days to complete. The full hourly "national" resolution model takes less than a day.

* `gas_storage`: Includes underground methane storage facilities, based on latest data on a national level. Can be omitted to remove the option of this technology.

* `link_cap_dynamic`: Sets a limit on transmission line capacities. The limits are chosen subjectively based on current capacity, such that lines with smaller current capacities can proportionally increase much more (e.g. 100x) than larger lines (e.g. 2x). See `national/links.yaml` for other override options to apply here.

* `freeze-hydro-capacities`: Sets hydro capacities to equal "today's" capacities. This seems more reasonable than setting current capacities as upper limits, as this causes the model to install no hydro.

## About

Author: Fei Wu, ETH Zürich and TU Delft, 20220609

Based on [Sector-Coupled Euro-Calliope by Bryn Pickering](https://doi.org/10.5281/zenodo.5774988), under a CC BY 4.0 license.

License:

[![CC BY 4.0][cc-by-shield]][cc-by]

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
