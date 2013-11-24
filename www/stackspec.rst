.. _stackspec:

=============================
The SciPy Stack specification
=============================

Python Distributions promoting themselves as providing the SciPy stack should
meet the requirements listed below.

This specification is versioned, so it can be updated. The current version is
SciPy Stack 1.0.

Components
----------

Distributions should include these packages in the initial installation.
Second-level bullet points indicate dependencies: the versions of these should
be sufficient for the packages that require them.

* Python (2.x >= 2.6 or 3.x >= 3.2)
* NumPy (>= 1.6)
* SciPy library (>= 0.10)
* Matplotlib (>= 1.1)

  - dateutil
  - pytz
  - Support for at least one backend

* IPython (>= 0.13)

  - pyzmq
  - tornado

* pandas (>= 0.8)
* Sympy (>= 0.7)
* nose (>= 1.1)


Other requirements
------------------

After installation, entering ``ipython`` in a terminal/command prompt should
start IPython, and it should be possible to import any of the packages specified
above. Distributions are welcome to also provide other shortcuts, menu entries,
and interfaces such as IDEs.

The user should be able to install arbitrary extra Python packages into the
distribution.
