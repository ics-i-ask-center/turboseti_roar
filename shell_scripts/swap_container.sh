#!/bin/bash

if [[ -d ${HOME}/work/sw/turbo_seti && -x ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif ]]; then
    rm -rf ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif
    cp turbo_seti_new.sif ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif

else
    echo "Current turboSETI container does not exist. No need for swap."
    
fi
