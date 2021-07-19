#!/bin/bash

set -e

for butane_file in *.bu; do
    ignition_file=`basename "${butane_file}" .bu`.ign
    echo "Igniting ${butane_file} -> ${ignition_file}"

    butane --pretty --strict < "${butane_file}" > "${ignition_file}"
done

