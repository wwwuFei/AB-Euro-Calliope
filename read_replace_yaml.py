import yaml
import sys


def recursion(obj, key):
    if key in obj:
        return obj
        #obj[key] *= 0.9
    for k, v in obj.items():
        if isinstance(v, dict):
            item = recursion(v, key)
            if item is not None:
                item[key] *= 0.9

per = float(sys.argv[1])
if per  > 0:
    with open("fuel_group_constraints_2018_copy.yaml", "r") as f:
        data = yaml.safe_load(f)
        # pdb.set_trace()

        recursion(data,"diesel")
        yaml.safe_dump(data,open("fuel_group_constraints_2018_"+str(per)+".yaml", "w"))
else:
    print('wrong input! use a float percentage number > 0')