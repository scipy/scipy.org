---
title: Installation
sidebar: false
---

Installations methods include:

- [Distributions](#distributions)
- [pip](#pip-install)
- [Package Manager](#package_manager)
- [Source](#source)
- [Binaries](#binaries)

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
commonly used scientific python tools.

[Anaconda](https://www.anaconda.com/download/) works on Windows, Mac,
and Linux, provides over 1,500 Python/R packages, and is used by over 15
million people. Anaconda is best suited to beginning users; it provides
a large collection of libraries all in one.

For more advanced users who will need to install or upgrade regularly,
[Miniconda](https://docs.conda.io/en/latest/miniconda.html) is a more
suitable way to install the _conda_ package manager.

Other options include:

- [WinPython](https://winpython.github.io): Another free distribution
  including scientific packages and the Spyder IDE; Windows only, but
  more actively maintained and supports the latest Python 3 versions.
- [Pyzo](http://www.pyzo.org/): A free distribution based on Anaconda
  and the IEP interactive development environment; Supports Linux,
  Windows, and Mac.

<a name="pip-install"></a>

# Installing via pip

Python comes with an inbuilt package management system,
[pip](https://pip.pypa.io/en/stable). Pip can install, update, or delete
any official package.

You can install packages via the command line by entering:

    python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

We recommend using an _user_ install, sending the `--user` flag to pip.
`pip` installs packages for the local user and does not write to the
system directories. Preferably, do not use `sudo pip`, as this
combination can cause problems.

Pip accesses the Python Package Index, [PyPI](https://pypi.org/) , which
stores almost 200,000 projects and all previous releases of said
projects. Because the repository keeps previous versions, you can pin to
a version and not worry about updates causing conflicts. Pip can also
install packages in local _virtualenv_, or virtual environment.

<a name="package_manager"></a>

# Install system-wide via a package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don\'t have as many available versions.

## Ubuntu and Debian

using apt-get:

    sudo apt-get install python3-numpy python3-scipy python3-matplotlib ipython3 python3-notebook python3-pandas python3-sympy python3-nose

## Fedora

using dnf:

    sudo dnf install python3-numpy python3-scipy python3-matplotlib python3-ipython python3-pandas python3-sympy python3-pytest

## Mac

Mac doesn\'t have a preinstalled package manager, but there are a couple
of popular package managers you can install.

[Homebrew](https://brew.sh/) has an incomplete coverage of the SciPy
ecosystem, but does install these packages:

    brew install numpy scipy ipython jupyter

<a name="source"></a>

# Source packages

You can build any of the packages from source. Those involved in
development may take this route to get developmental versions or alter
source code. Refer to individual projects for more details.

# Binaries

Binary files can directly install the packages. These can either come
from the direct source, like [GitHub](https://github.com/) or
[PyPI](https://pypi.org/) , or third-party repositories. Linux operating
systems, like [Ubuntu](https://packages.ubuntu.com/) , have package
repositories where you can search for and download individual binaries.
For Windows, Christoph Gohlke provides [pre-built Windows
installers](http://www.lfd.uci.edu/~gohlke/pythonlibs) for many
packages.
