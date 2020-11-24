help([[turboSETI is an analysis tool for the search of narrow band 
drifting signals in filterbank data (frequency vs. time). The main 
purpose of the code is to hopefully one day find signals of 
extraterrestrial origin!! It can search the data for hundreds of drift 
rates (in Hz/sec). It can handle either .fil or .h5 file formats.

To use turboSETI, use the following command:
$ turboSETI

To use Jupyter Notebook with turboSETI (must be on interactive desktop):
$ turboSETI-notebook

To utilize the python installed inside the container:
$ turboSETI-python

If you run into any issues while using this container
then please contact Jason at the i-ASK center by emailing
iask@ics.psu.edu]])

whatis("Description: turboSETI is an analysis tool for the search of narrow band drifting signals in filterbank data (frequency vs. time).")
whatis("Jupyter Notebook Version: 6.1.4")
whatis("Conda Version: 4.9.0")
whatis("Python Version: 3.8.3")

local turbosetiLaunch = "$(command -v singularity) -s exec ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif turboSETI $@"
local notebookLaunch = "$(command -v singularity) -s exec --bind ${HOME}:/run ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif jupyter notebook $@"
local pythonLauch = "$(command -v singularity) -s exec ${HOME}/work/sw/turbo_seti/turbo_seti_latest.sif python $@"

set_shell_function("turboSETI", turbosetiLaunch)
set_shell_function("turboSETI-notebook", notebookLaunch)
set_shell_function("turboSETI-python", pythonLauch)
