#!/bin/bash

set -e

for butane_file in *.bu; do

    echo ${butane_file}

    ignition_file=`basename "${butane_file}" .bu`.ign
    butane --pretty --strict < "${butane_file}" > "${ignition_file}"
done

