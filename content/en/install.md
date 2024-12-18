---
title: Installation
sidebar: false
---

The recommended method of installing SciPy depends on your preferred workflow.
The common workflows can roughly be broken down into the following
categories:

- [Project-based (e.g. `uv`, `pixi`)](#project-based) (recommended for new users)
- [Environment-based (e.g. `pip`, `conda`)](#environment-based) (the traditional workflow)
- [System package managers](#system-package-managers) (not recommended)
- [Building from source](#building-from-source) (for debugging and development)

To install SciPy with [static type stubs],
see [Installing with type stubs](#type-stubs).

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

<a name="project-based"></a>

## Project-based workflows

In project-based workflows, a project is a directory containing a manifest
file describing the project, a lock-file describing the exact dependencies
of the project, and the project's (potentially multiple) environments.

### Installing with `uv`

{{< admonition tip >}}
If it is your first time installing a Python library, start here!
{{< /admonition >}}

Here is a step-by-step guide to setting up a project to try SciPy with [`uv`],
a Python package manager.

[`uv`]: https://docs.astral.sh/uv/

1. Install `uv`, following [the instructions in the `uv` documentation][install-uv].

[install-uv]: https://docs.astral.sh/uv/getting-started/installation/

2.  Create a new project in a new subdirectory, by executing the following in a terminal:

        uv init try-scipy
        cd try-scipy

    {{< admonition hint >}}
The second command changes directory into the directory of your project.
    {{< /admonition >}}

3.  Install Python:

        uv python install

    {{< admonition note >}}
If you have already installed Python, this step is optional.
    {{< /admonition >}}

4.  Add SciPy to your project:

        uv add scipy

5.  Try out SciPy!

        uv run python

    This will launch a Python interpreter session, from which you can `import scipy`.

See next steps in [the SciPy user guide][scipy-user-guide].

[scipy-user-guide]: https://docs.scipy.org/doc/scipy/tutorial/

### Installing with `pixi`

If you work with non-Python packages, you may prefer to install SciPy as
a [Conda] package, so that you can use the same workflow for packages which
are not available on [PyPI](https://pypi.org/), the Python Package Index.
Conda can manage packages in any language, so you can use it to install
Python itself, compilers, and other languages.

[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html

The steps to install SciPy from [conda-forge] using the package management
tool [`pixi`] are very similar to the steps for `uv`:

[conda-forge]: https://conda-forge.org/
[`pixi`]: https://pixi.sh/latest/

1. Install `pixi`, following [the instructions in the `pixi` documentation][install-pixi].

[install-pixi]: https://pixi.sh/latest/

2.  Create a new project in a new subdirectory:

        pixi init try-scipy
        cd try-scipy

3.  Add SciPy to your project:

        uv add scipy

    {{< admonition note >}}
This step also adds Python from conda-forge.
    {{< /admonition >}}

4.  Try out SciPy!

        pixi run python

See next steps in [the SciPy user guide][scipy-user-guide].

<a name="environment-based"></a>

## Environment-based workflows

In environment-based workflows, you install packages into an environment, which you
can activate and deactivate.
These workflows are well-established,
but lack some reproducibility benefits of project-based workflows.

### Installing with `pip`

1. [Install Python](https://www.python.org/downloads/).

2. Create and activate a virtual environment with `venv`.

   {{< admonition hint >}}
See [the tutorial in the Python Packaging User Guide](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments).
   {{< /admonition >}}

3.  Install SciPy, using [`pip`]:

        python -m pip install scipy

[`pip`]: https://pip.pypa.io/en/stable/getting-started/

### Installing with `conda`

[Miniforge] is the recommended way to install `conda` and [`mamba`],
two Conda-based environment managers.
You can then install SciPy from conda-forge as follows:

    conda install scipy # or
    mamba install scipy

[Miniforge]: https://conda-forge.org/download/
[`mamba`]: https://mamba.readthedocs.io/en/latest/

<a name="system-package-managers"></a>

## Installing system-wide via a system package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don't have as many available versions. They are not the recommended
installation method.

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
recommend using binaries instead if those are available for your platform
via one of the above methods.
For details on how to build from source, see
[the building from source guide in the SciPy docs][building-docs].

[building-docs]: https://scipy.github.io/devdocs/building/index.html

<a name="type-stubs"></a>

## Installing with type stubs

Static type stubs are available via a separate package, `scipy-stubs`, on
PyPI and conda-forge.
You can also install SciPy and `scipy-stubs` as a single package,
via the `scipy-stubs[scipy]` extra on PyPI, or the `scipy-typed`
package on conda-forge.
To get a specific version `x.y.z` of SciPy (such as `1.14.1`),
you should install version `x.y.z.*`, for example:

    uv add "scipy-stubs[scipy]==1.14.1.*" # or
    pixi add "scipy-typed=1.15.0.*" # or
    python -m pip install "scipy-stubs[scipy]" # or
    conda install "scipy-typed>=1.14"

Please direct questions about static typing support to
[the `scipy-stubs` GitHub repository](https://github.com/jorenham/scipy-stubs).
