# Table of Contents

* [Overview](#Overview)
* [Accessing and using turboSETI on Roar](#accessing-and-using-turboseti-on-roar)
* [Bootstrapping](#bootstrapping)
* [Custom Deployment](#custom-deployment)
* [License](#license)
* [Troubleshooting](#troubleshooting)

# Overview

![Singularity Version](https://img.shields.io/badge/singularity-3.5.2-informational)
![Debian](https://img.shields.io/badge/image%20base-debian%209%20(Stretch)-important)
![turboseti](https://img.shields.io/badge/turboSETI-2.0.0-blue)
![blimpy](https://img.shields.io/badge/blimpy-2.0.2-blue)
![conda](https://img.shields.io/badge/conda-v4.9.0-blue)
![GitHub](https://img.shields.io/github/license/ics-i-ask-center/turboseti_roar)

[TurboSETI](https://github.com/UCBerkeleySETI/turbo_seti) is an analysis tool for the search of narrow band 
drifting signals in filterbank data (frequency vs. time). The main 
purpose of the code is to hopefully one day find signals of 
extraterrestrial origin!! It can search the data for hundreds of drift 
rates (in Hz/sec). It can handle either .fil or .h5 file formats. This [singularity](https://sylabs.io/) container is Roar's implementation of turboSETI.

# Accessing and using turboSETI on Roar

* [Installing turboSETI](#installing-turboseti)
* [Using turboSETI](#using-turboseti)

### Installing turboSETI

In order to access turboSETI on Roar, you will need to install it yourself. This is because there is not a large demand for this module on the cluster. That being said, I do have a local installer hosted in a public folder. You can use the following commands to set up your own local copy of turboSETI:

```bash
$ cd ~/scratch
$ cp /gpfs/group/dml129/default/nucci2/installers/turbo_seti/turbo_seti.tar.gz turbo_seti.tar.gz
$ tar -xzvf turbo_seti.tar.gz
$ cd turbo_seti
$ bash setup.sh
```

After running these commands, there will be a turboSETI module set up in `~/work/sw/modules`.

**NOTE:** The turboSETI installer may migrate to GitHub releases in the future. These commands will be updated to reflect that migration in the future.

### Using turboSETI

In order to access your turboSETI module, you will need to use the following commands:

```bash
$ module use ~/work/sw/modules
$ module load turbo_seti
```

Now that you have loaded turboSETI into your current environment you only need to use the following command in order to launch turboSETI:

```bash
$ turboSETI
```

In order to use the python interpreter installed inside the turboSETI container, you can use the following command:

```bash
$ turboSETI-python
```

In order to use the jupyter notebook installed inside the turboSETI container, you can use the following command:

```bash
$ turboSETI-notebook
```

**NOTE:** You will need to be on an interactive desktop session in order for your jupyter notebook session to work correctly.

# Bootstrapping
In order to use this container as the base for other singularity images (a.k.a bootstrap), then please use the one of the base definition files stored in `/bootstrap`. You can download the bootstrap definition files by either cloning this repository:

```bash
$ git clone https://github.com/ics-i-ask-center/turboseti_roar.git
```

and copying the files, or you can also download them using `wget`:

```bash
$ wget https://raw.githubusercontent.com/ics-i-ask-center/turboseti_roar/master/bootstrap/turbo_seti_library_bootstrap.def
$ wget https://raw.githubusercontent.com/ics-i-ask-center/turboseti_roar/master/bootstrap/turbo_seti_local_bootstrap.def
```

There are slight differences between the two bootstrap files. You should use `turbo_seti_library_bootstrap.def` if you want to download the turboSETI container from the Sylab Cloud before building your container. You should use `turbo_seti_local_bootstrap.def` if you already have a copy of the container on your machine.

**Note:** If you are using the Sylabs Remote Builder to build your own container then you should use `turbo_seti_library_bootstrap.def`.

# Custom Deployment
If you are looking for a custom deployment of turboSETI (e.g. specific software, specialized environment, etc.), then please contact the ICDS i-ASK center at iask@ics.psu.edu for assistance. We can help you build the custom Eclipse container you need.

# License
This repository is licensed under the GNU General Public License v3.0. 
For more information on what this license entails, please feel free to 
visit https://www.gnu.org/licenses/gpl-3.0.en.html

# Troubleshooting
If you encounter any issues while using this eclipse container then please open an issue, or contact Jason at the ICDS i-ASK center at either iask@ics.psu.edu or jcn23@psu.edu. Please contact the i-ASK center if you are looking for or need a custom deployment of this container.
