---
title: Beginner Installation Guide
sidebar: false
---

{{< admonition tip >}}
This is the beginner installation guide.
If you are comfortable with using a terminal and happy to learn
how to use a package manager, check out
[the main installation guide](./install.md)!
{{< /admonition >}}

- [JupyterLite](#jupyterlite)
- [Scientific Python Distributions](#distributions)
- [Installing globally with `pip`](#pip-global)

<a name="jupyterlite"></a>

## JupyterLite

To try out SciPy, you don't even need to install it!
You can use SciPy in your browser at https://jupyter.org/try-jupyter/lab/ -
just write `import scipy` in one of the notebook "cells" and hit play.

For next steps, see [the SciPy user guide][scipy-user-guide].

[scipy-user-guide]: https://docs.scipy.org/doc/scipy/tutorial/

<a name="distributions"></a>

## Scientific Python Distributions

Python distributions provide the language itself, along with the most
commonly used packages and tools. These downloadable files require
little configuration, work on almost all setups, and provide all the
most commonly used scientific Python tools.
[Anaconda](https://www.anaconda.com/download/) works on Windows, Mac,
and Linux, and is best suited to beginning users.
Other options include:

- [WinPython](https://winpython.github.io): Another free distribution
  including scientific packages and the Spyder IDE; Windows only, but
  more actively maintained and supports the latest Python 3 versions.
- [Pyzo](https://pyzo.org): A free distribution based on Anaconda
  and the IEP interactive development environment; Supports Linux,
  Windows, and Mac.

Users in large, non-university institutions may want to read Anaconda's
helpful blog on ["when is Anaconda free to use?"][anaconda-blog]

[anaconda-blog]: https://www.anaconda.com/blog/update-on-anacondas-terms-of-service-for-academia-and-research

After installing a scientific Python distribution,
see next steps in [the SciPy user guide][scipy-user-guide].

<a name="pip-global"></a>

## Installing globally with `pip`

If you already have Python installed, you can install SciPy globally
with `pip` by executing the following in a terminal/shell:

    python -m pip install scipy

You may see this recommended in tutorials or classes, but it is not
recommended to install packages globally on your system.
The recommended way to install SciPy with `pip` is to use a virtual
environment - see [Installing with `pip`](./install.md#installing-with-pip).

{{< admonition note >}}
For more information on why this is not a recommended installation method,
read about [virtual environments in the Python Packaging User Guide](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments).
{{< /admonition >}}
