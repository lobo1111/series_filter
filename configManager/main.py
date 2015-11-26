import structure
import sys
import yaml

with open(structure.path, 'w') as outfile:
    outfile.write(yaml.dump(structure.config, default_flow_style=True))
