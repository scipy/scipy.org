=======
Scikits
=======

SciKits (short for SciPy Toolkits), are add-on packages for SciPy,
hosted and developed separately and independently from the main SciPy
distribution. All SciKits are licensed under OSI-approved licenses.

Packages are packaged as toolkits (instead of in the main, monolithic
SciPy distribution) when:

- The package is deemed too specialized to live in SciPy itself or
- The package has a GPL (or similar) license which is incompatible with SciPy's BSD license or
- The package is meant to be included in SciPy, but development is still in progress.

List of Scikits
===============
An automatically maintained list of Scikits can be found here:

* http://scikits.appspot.com/scikits

Making Scikits
==============

If you are planning to write a scientific open-source software package
for Python, aimed to supplement the existing ones, it may make sense
to brand it as a Scikit. The advantage that consistent naming brings
is that the package becomes easier to discover, rather than being one
amongst the 30000+ Python packages unrelated to research.

The technical step to make this happen is simple: register the project
in the `Python package index <https://pypi.python.org/pypi>`__ with a name
chosen to start with ``scikit``. Examples of existing package:
`scikit-learn <http://scikits.appspot.com/scikit-learn>`__ (machine
learning), `scikits.sparse
<http://scikits.appspot.com/scikits.sparse>`__ (additional sparse
matrix routines).

Naturally, you are fully in charge of your own project, and can host
it wherever you like.  The only requirement we ask is that the project
is under an OSI-approved open source license, and is related to
science, engineering, or research in some other topic.  It can however
be useful to let people know about it by discussing the new project
e.g. on the :doc:`Scipy mailing lists </scipylib/mailing-lists>`.

Whilst the recommended license for Scikits projects is the (new) `BSD
<https://opensource.org/licenses/bsd-license.html>`__ license,
scikits packages are free to choose their own open source license. The
license should be officially `OSI
<https://opensource.org/licenses/alphabetical>`__ approved. We, the
scipy-developers, will allow packages to contain code with licenses
that, in our judgment, comply with the Open Source Definition but have
not gone through the approval process. This is to allow us to adopt
old code with permissive licenses. The package itself, though, should
use a well-known OSI-approved license.


Scikit project structure
========================

An example of a project organization can be found here:

* https://github.com/pv/scikit-example

The important part here is the project name passed to the build
system, and registering the package in the `Python Package Index
<https://pypi.python.org/pypi>`__.

The example package also shows how to use Numpy's test framework, use
`Sphinx <http://www.sphinx-doc.org/en/stable/>`__ to write documentation, and link
to Fortran code using Numpy's build framework.

Further reading:

- `Python Packaging User Guide <https://packaging.python.org/>`__
