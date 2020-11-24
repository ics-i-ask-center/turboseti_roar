#!/bin/bash

# Create "turbo_seti/modules" directory if it doesn't exist
if [ ! -d ${HOME}/work/sw/modules/turbo_seti ]; then
    mkdir -p ${HOME}/work/sw/modules/turbo_seti
fi

# Create "turbo_seti" directory if it doesn't exist
if [ ! -d ${HOME}/work/sw/turbo_seti ]; then
    mkdir -p ${HOME}/work/sw/turbo_seti
fi

# Copy turbo_seti.sif and local.lua to
# respective locations
cp turbo_seti_latest.sif ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif
cp local.lua ${HOME}/work/sw/modules/turbo_seti/local.lua

# Adjust permissions accordingly
chmod -R ug+rx ${HOME}/work/sw/modules
chmod -R ug+rx ${HOME}/work/sw/turbo_seti

# Once the install is finished
echo "Installation of the turbo_seti module has finished"
echo -e "\nTo use turbo_seti, enter the following commands in your terminal:\n"
echo "module use ~/work/sw/modules"
echo "module load turbo_seti/local"
echo -e "\nIf you run into any issues please contact Jason at iask@ics.psu.edu"
