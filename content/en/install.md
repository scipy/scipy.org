---
title: Installation
sidebar: false
---

{{< admonition tip >}}
This page assumes that you are comfortable with using a terminal and happy to learn
how to use a package manager. If you are a beginner and just want to get started
with SciPy as quickly as possible, check out
[the beginner installation guide](./beginner-install.md)!
{{< /admonition >}}

The recommended method of installing SciPy depends on your preferred workflow.
The common workflows can roughly be broken down into the following
categories:

- **Project-based** (e.g. `uv`, `pixi`) _(recommended for new users)_
- **Environment-based** (e.g. `pip`, `conda`) _(the traditional workflow)_
- **System package managers** _(not recommended)_
- **Building from source** _(for debugging and development)_

To install SciPy with [static type stubs],
see [Installing with type stubs](#type-stubs).

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

{{< admonition tip >}}
Installing type stubs may be required for
Integrated Development Environments (IDEs) to provide accurate type hints.
{{< /admonition >}}

{{< tabs >}}

[[tab]]
name = 'Project Based'
content = '''
<a name="project-based"></a>

### Installing with uv

Here is a step-by-step guide to setting up a project to use SciPy, with uv, a Python package manager.

1. Install `uv` following, [the instructions in the uv documentation](https://docs.astral.sh/uv/getting-started/installation/).

2. Create a new project in a new subdirectory, by executing the following in a terminal:

```bash
uv init try-scipy
cd try-scipy
```

{{< admonition hint >}}
The second command changes directory into the directory of your project.
{{< /admonition >}}

3. Add SciPy to your project:

```bash
uv add scipy
```

{{< admonition note >}}
This will automatically install Python if you don't already have it installed!
{{< /admonition >}}

{{< admonition tip >}}
You can install other Python libraries in the same way, e.g.

```bash
uv add matplotlib
```

{{< /admonition >}}

4. Try out SciPy!

```bash
uv run python
```

This will launch a Python interpreter session, from which you can `import scipy`.

<!-- prettier-ignore-end -->

See next steps in [the SciPy user guide][scipy-user-guide].

[scipy-user-guide]: https://docs.scipy.org/doc/scipy/tutorial/

{{< admonition note >}}

After rebooting your computer, you'll want to navigate to your `try-scipy`
project directory and execute `uv run python` to drop back into a Python interpreter
with SciPy importable.
To execute a Python script, you can use `uv run myscript.py`.

Read more at [the uv guide to working on projects][uv-projects].

[uv-projects]: https://docs.astral.sh/uv/guides/projects/

{{< /admonition >}}

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

```bash
pixi init try-scipy
cd try-scipy
```

3.  Add SciPy to your project:

```bash
pixi add scipy
```

4. Try out SciPy!

```bash
pixi run python
```

'''

[[tab]]
name = 'Environment Based'
content = '''
<a name="environment-based"></a>

In project-based workflows, a project is a directory containing a manifest
file describing the project, a lock-file describing the exact dependencies
of the project, and the project's (potentially multiple) environments.

In contrast,
in environment-based workflows you install packages into an environment,
which you can activate and deactivate from any directory.
These workflows are well-established,
but lack some reproducibility benefits of project-based workflows.

### Installing with `pip`

<!-- prettier-ignore-start -->

1.  [Install Python](https://www.python.org/downloads/).

2.  Create and activate a virtual environment with `venv`.

{{< admonition hint >}}
See [the tutorial in the Python Packaging User Guide](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments).
{{< /admonition >}}

3.  Install SciPy, using [`pip`]:

```bash
python -m pip install scipy
```
<!-- prettier-ignore-end -->

[`pip`]: https://pip.pypa.io/en/stable/getting-started/

### Installing with `conda`

[Miniforge] is the recommended way to install `conda` and [`mamba`],
two Conda-based environment managers.
After creating an environment, you can install SciPy from conda-forge as follows:

```bash
conda install scipy # or
mamba install scipy
```

[Miniforge]: https://conda-forge.org/download/

[`mamba`]: https://mamba.readthedocs.io/en/latest/
'''

[[tab]]
name = 'Package Manager'
content = '''
<a name="system-package-managers"></a>

## Installing system-wide via a system package manager

System package managers can install the most common Python packages.
They install packages for the entire computer, often use older versions,
and don't have as many available versions. They are not the recommended
installation method.

### Ubuntu and Debian

Using `apt-get`:

```bash
sudo apt-get install python3-scipy
```

### Fedora

Using `dnf`:

```bash
sudo dnf install python3-scipy
```

### macOS

macOS doesn't have a preinstalled package manager, but you can install
[Homebrew](https://brew.sh/) and use it to install SciPy (and Python itself):

```bash
brew install scipy
```

'''

[[tab]]
name = 'Building from Source'
content = '''
<a name="building-from-source"></a>

A word of warning: building SciPy from source can be a nontrivial exercise. We
recommend using binaries instead if those are available for your platform
via one of the above methods.
For details on how to build from source, see
[the building from source guide in the SciPy docs][building-docs].

[building-docs]: https://scipy.github.io/devdocs/building/index.html

'''

{{</ tabs >}}

See next steps in the [SciPy user guide](https://docs.scipy.org/doc/scipy/tutorial/).

<a name="type-stubs"></a>

## Installing with Type Stubs

Static type stubs are available via a separate package, `scipy-stubs`, on
PyPI and conda-forge.
You can also install SciPy and `scipy-stubs` as a single package,
via the `scipy-stubs[scipy]` extra on PyPI, or the `scipy-typed`
package on conda-forge.
To get a specific version `x.y.z` of SciPy (such as `1.14.1`),
you should install version `x.y.z.*`, for example:

```bash
uv add "scipy-stubs[scipy]==1.14.1.*" # or
pixi add "scipy-typed=1.15.0.*" # or
python -m pip install "scipy-stubs[scipy]" # or
conda install "scipy-typed>=1.14"
```

Please direct questions about static typing support to
[the `scipy-stubs` GitHub repository](https://github.com/jorenham/scipy-stubs).
