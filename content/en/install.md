---
title: Installation
sidebar: false
---

The recommended method of installing SciPy depends on your preferred workflow.
The common workflows can roughly be broken down into the following
categories:

- [Environment-based (e.g. `pip`, `conda`)](#environment-based) (the traditional workflow)
- [Project-based (e.g. `uv`, `pixi`)](#project-based) (recommended for new users)
- [System package managers](#system-package-managers) (simplest)
- [Building from source](#building-from-source) (for debugging and development)

To install SciPy with [static type stubs],
see [Installing with type stubs](#type-stubs).

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

<a name="environment-based"></a>

## Environment-based workflows

In environment-based workflows, you install packages into an environment, which you
can activate and deactivate.

If you have installed Python, you can create a virtual environment with a tool such
as `venv` - see [the tutorial in the Python Packaging User Guide][venv-guide].
You can then install [SciPy from PyPI], the Python Package Index, with [`pip`]:

    python -m pip install scipy

[venv-guide]: https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments
[SciPy from PyPI]: https://pypi.org/project/scipy/
[`pip`]: https://pip.pypa.io/en/stable/getting-started/

Alternatively, you can install [SciPy from conda-forge] using a [Conda]-based
environment manager. You can install Python itself, as well as packages in
languages other than Python, as Conda packages.

[Miniforge] is the recommended way to install `conda` and [`mamba`],
two Conda-based environment managers. You can then install SciPy as follows:

    conda install scipy # or
    mamba install scipy

[SciPy from conda-forge]: https://anaconda.org/conda-forge/scipy
[Miniforge]: https://conda-forge.org/download/
[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html
[`mamba`]: https://mamba.readthedocs.io/en/latest/

<a name="project-based"></a>

## Project-based workflows

In project-based workflows, a project is a directory containing a manifest
file describing the project, a lock-file describing the exact dependencies
of the project, and the project's (potentially multiple) environments.
These workflows provide reproducibility benefits over environment-based workflows.

You can add [SciPy from PyPI] to a [`uv`] project:

    uv add scipy

You can also install Python itself with `uv`.

[`uv`]: https://docs.astral.sh/uv/

If you work with non-Python packages, you may prefer to install SciPy as
a Conda package, so that you can use the same workflow for packages which
are not available on PyPI.

You can add [SciPy from conda-forge] to a [`pixi`] project:

    pixi add scipy

Pixi can also install packages from PyPI, using `uv` under the hood.

[`pixi`]: https://pixi.sh/latest/

<a name="system-package-managers"></a>

## Installing system-wide via a system package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don't have as many available versions. They are not the recommended
installation method, but they are the simplest.

### Ubuntu and Debian

Using `apt-get`:

    sudo apt-get install python3-scipy

### Fedora

Using `dnf`:

    sudo dnf install python3-scipy

### macOS

macOS doesn't have a preinstalled package manager, but you can install
[Homebrew](https://brew.sh/) and use it to install SciPy (and Python itself):

    brew install scipy

<a name="building-from-source"></a>

## Building from source

A word of warning: building SciPy from source can be a nontrivial exercise. We
recommend using binaries instead if those are available for your platform.
For details on how to build from source, see
[the building from source guide in the SciPy docs][building-docs].

[building-docs]: https://scipy.github.io/devdocs/building/index.html

<a name="type-stubs"></a>

## Installing with type stubs

Static type stubs are available via a separate package, `scipy-stubs`, on
PyPI and conda-forge. If you have already installed SciPy, you just need to
install `scipy-stubs` in the same way:

    python -m pip install scipy-stubs # or
    uv add scipy-stubs # or
    conda install scipy-stubs # or
    pixi add scipy-stubs

<!---
XXX: https://github.com/conda-forge/scipy-stubs-feedstock/pull/5
-->

You can also install SciPy and `scipy-stubs` as a single package,
via the `scipy-stubs[scipy]` extra on PyPI, or the `scipy-typed`
package on conda-forge.
To get a specific version `x.y.z` of SciPy (such as `1.14.1`),
you should install version `x.y.z.*` below:

    python -m pip install "scipy-stubs[scipy]" # or
    # versions for illustrative purposes
    uv add "scipy-stubs[scipy]==1.14.1.*" # or
    conda install "scipy-typed>=1.14" # or
    pixi add "scipy-typed=1.15.0.*"

Please direct questions about static typing support to
[the `scipy-stubs` GitHub repository](https://github.com/jorenham/scipy-stubs).
