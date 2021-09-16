#!/bin/bash
set -e
curr_dir=$(dirname "$0")
python3 -m venv postgres_converter_venv --system-site-packages
source postgres_converter_venv/bin/activate
python3 -m pip install -r requirements.txt
script_name=$1
shift
python3 $script_name "$@"
