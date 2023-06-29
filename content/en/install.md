---
title: Installation
sidebar: false
---

Installations methods include:

- [Distributions](#distributions)
- [pip](#pip-install)
- [conda](#pip-install)
- [Package Manager](#package_manager)
- [Source](#source)

Methods differ in ease of use, coverage, maintenance of old versions,
system-wide versus local environment use, and control. With pip or
Anaconda\'s conda, you can control the package versions for a specific
project to prevent conflicts. Conda also controls non-Python packages,
like MKL or HDF5. System package managers, like `apt-get`, install
across the entire computer, often have older versions, and don\'t have
as many available versions. Source compilation is much more difficult
but is necessary for debugging and development. If you don\'t know which
installation method you need or prefer, we recommend the Scientific
Python Distribution [Anaconda](https://www.anaconda.com/download/).

<a name="distributions"></a>

# Scientific Python Distributions (recommended)

Python distributions provide the language itself, along with the most
commonly used packages and tools. These downloadable files require
little configuration, work on almost all setups, and provide all the
commonly used scientific Python tools.

[Anaconda](https://www.anaconda.com/download/) works on Windows, Mac,
and Linux, provides over 1,500 Python packages, and is used by over 15
million people. Anaconda is best suited to beginning users; it provides
a large collection of libraries all in one.

For more advanced users who will need to install or upgrade regularly,
[Mambaforge](https://github.com/conda-forge/miniforge#mambaforge) is a more
suitable way to install the `conda` (and `mamba`, a faster `conda` alternative)
package manager.

Other options include:

- [WinPython](https://winpython.github.io): Another free distribution
  including scientific packages and the Spyder IDE; Windows only, but
  more actively maintained and supports the latest Python 3 versions.
- [Pyzo](https://www.pyzo.org/): A free distribution based on Anaconda
  and the IEP interactive development environment; Supports Linux,
  Windows, and Mac.

<a name="pip-install"></a>

# Installing with Pip

You can install SciPy from PyPI with `pip`:

    python -m pip install scipy

<a name="conda-install"></a>

# Installing via Conda

You can install SciPy from the `defaults` or `conda-forge` channels with `conda`:

    conda install scipy

<a name="package_manager"></a>

# Install system-wide via a package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don't have as many available versions.

## Ubuntu and Debian

Using `apt-get`:

    sudo apt-get install python3-scipy

## Fedora

Using `dnf`:

    sudo dnf install python3-scipy

## macOS

macOS doesn't have a preinstalled package manager, but you can install
[Homebrew](https://brew.sh/) and use it to install SciPy (and Python itself):

    brew install scipy

<a name="source"></a>

# Source packages

A word of warning: building SciPy from source can be a nontrivial exercise. We
recommend using binaries instead if those are available for your platform.
For details on how to build from source, see
[this guide in the SciPy docs](https://scipy.github.io/devdocs/building/index.html).
