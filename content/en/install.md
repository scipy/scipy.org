---
title: Installation
sidebar: false
---

Installation methods include:

- [Python Distributions](#distributions)
- [PyPI (`pip`, `uv`)](#pypi-install)
- [conda-forge (`conda`, `mamba`, `pixi`)](#conda-forge-install)
- [System Package Managers](#system-package-manager)
- [Source](#source)

Methods differ in ease of use, coverage, maintenance of old versions,
system-wide versus local environment use, and control. When installing
from PyPI or with Conda, you can control the package versions for a specific
project to prevent conflicts. Conda also controls non-Python packages,
like MKL or HDF5. System package managers, like `apt-get`, install
across the entire computer, often have older versions, and don't have
as many available versions. Source compilation is much more difficult
but is necessary for debugging and development. If you don't know which
installation method you need or prefer, we recommend the Scientific
Python Distribution [Anaconda](https://www.anaconda.com/download/).

Users in large, non-university institutions may want to read Anaconda's
helpful blog on ["when is Anaconda free to use?"][anaconda-blog]

[anaconda-blog]: https://www.anaconda.com/blog/update-on-anacondas-terms-of-service-for-academia-and-research

To install SciPy with [static type stubs],
see [Installing with type stubs](#type-stubs).

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

<a name="distributions"></a>

# Scientific Python Distributions (recommended for new users)

Python distributions provide the language itself, along with the most
commonly used packages and tools. These downloadable files require
little configuration, work on almost all setups, and provide all the
commonly used scientific Python tools.

[Anaconda](https://www.anaconda.com/download/) works on Windows, Mac,
and Linux, provides over 1,500 Python packages, and is used by over 15
million people. Anaconda is best suited to beginning users; it provides
a large collection of libraries all in one.

Other options include:

- [WinPython](https://winpython.github.io): Another free distribution
  including scientific packages and the Spyder IDE; Windows only, but
  more actively maintained and supports the latest Python 3 versions.
- [Pyzo](https://pyzo.org): A free distribution based on Anaconda
  and the IEP interactive development environment; Supports Linux,
  Windows, and Mac.

If you already have Python installed, you can
[install SciPy with `pip`](#pip-install).
For more advanced users who will need to install or upgrade regularly,
you may prefer to use a dedicated package manager like [`uv`]
(see [Installing with `uv`](#uv-install])),
[Conda], or [`pixi`] (see [Installing from conda-forge](#conda-forge-install)).

[`uv`]: https://docs.astral.sh/uv/
[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html
[`pixi`]: https://pixi.sh/latest/

<a name="pypi-install"></a>

# Installing from PyPI

SciPy is [available on PyPI](https://pypi.org/project/scipy/), the Python Package Index.

<a name="pip-install"></a>

## Installing with `pip`

You can install SciPy from PyPI with `pip`:

```bash
python -m pip install scipy
```

<a name="uv-install"></a>

## Installing with `uv`

You can also add SciPy from PyPI to a `uv` project:

```bash
uv add scipy
```

<a name="conda-forge-install"></a>

# Installing from conda-forge

## Installing with `conda` or `mamba`

[`Miniforge`] is the recommended way to install the `conda`
(and `mamba`, a faster `conda` alternative) package manager.
You can then install SciPy as follows:

```bash
mamba install scipy
```

[`Miniforge`]: https://conda-forge.org/download/

## Installing with `pixi`

You can also add SciPy from conda-forge to a [`pixi`] project:

```bash
pixi add scipy
```

# Installing from the Anaconda Repository

If you instead install `conda` via [`Miniconda`], you can install
[SciPy from the Anaconda repository](https://anaconda.org/anaconda/scipy):

```bash
conda install scipy
```

<a name="system-package-manager"></a>

# Install system-wide via a system package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don't have as many available versions.

## Ubuntu and Debian

Using `apt-get`:

```bash
sudo apt-get install python3-scipy
```

## Fedora

Using `dnf`:

```bash
sudo dnf install python3-scipy
```

## macOS

macOS doesn't have a preinstalled package manager, but you can install
[Homebrew](https://brew.sh/) and use it to install SciPy (and Python itself):

```bash
brew install scipy
```

<a name="source"></a>

# Source packages

A word of warning: building SciPy from source can be a nontrivial exercise. We
recommend using binaries instead if those are available for your platform.
For details on how to build from source, see
[this guide in the SciPy docs](https://scipy.github.io/devdocs/building/index.html).

<a name="type-stubs"></a>

# Installing with type stubs

Static type stubs are available via a separate package, `scipy-stubs`, on
PyPI and conda-forge. If you have already installed SciPy, you just need to
install `scipy-stubs` in the same way:

```bash
python -m pip install scipy-stubs # or
uv add scipy-stubs # or
mamba install scipy-stubs # or
pixi add scipy-stubs
```

<!---
XXX: https://github.com/conda-forge/scipy-stubs-feedstock/pull/5
-->

You can also install SciPy and `scipy-stubs` as a single package,
via the `scipy-stubs[scipy]` extra on PyPI, or the `scipy-typed`
package on conda-forge.
To get a specific version `x.y.z` of SciPy (such as `1.14.1`),
you should install version `x.y.z.*` below:

```bash
python -m pip install 'scipy-stubs[scipy]' # or
# versions for illustrative purposes
uv add 'scipy-stubs[scipy]==1.14.*' # or
mamba install 'scipy-typed==1.14.1.*' # or
pixi add 'scipy-typed==1.15.0.*'
```
