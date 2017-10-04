.. _content:

Scientific Computing Tools for Python
=====================================

.. toctree::
   :hidden:

   stackspec

SciPy refers to several related but distinct entities:

* The *SciPy ecosystem*, a collection of open source software for scientific
  computing in Python.
* The *community* of people who use and develop this stack.
* Several *conferences* dedicated to scientific computing in Python - SciPy,
  EuroSciPy and SciPy.in.
* The :doc:`SciPy library <scipylib/index>`, one component of the SciPy stack,
  providing many numerical routines.

The SciPy ecosystem
-------------------

Scientific computing in Python builds upon a small core of packages:

* Python_, a general purpose programming language. It is interpreted and
  dynamically typed and is very suited for interactive work and quick
  prototyping, while being powerful enough to write large applications in.
* NumPy_, the fundamental package for numerical computation. It defines the
  numerical array and matrix types and basic operations on them.
* The :doc:`SciPy library <scipylib/index>`, a collection of numerical algorithms and
  domain-specific toolboxes, including signal processing, optimization,
  statistics and much more.
* Matplotlib_, a mature and popular plotting package, that provides 
  publication-quality 2D plotting as well as rudimentary 3D plotting

On this base, the SciPy ecosystem includes general and specialised tools for data management and computation, productive experimentation and high-performance computing. Below we overview some key packages, though there are :doc:`many more relevant packages <topical-software>`.

Data and computation:

* pandas_, providing high-performance, easy to use data structures.
* SymPy_, for symbolic mathematics and computer algebra.
* scikit-image_ is a collection of algorithms for image processing.
* scikit-learn_ is a collection of algorithms and tools for machine learning.
* h5py_ and PyTables_ can both access data stored in the HDF5 format.

Productivity and high-performance computing:

* IPython_, a rich interactive interface, letting you quickly process data and
  test ideas.
* The Jupyter_ notebook provides IPython functionality and more in your web
  browser, allowing you to document your computation in an easily reproducible form.
* Cython_ extends Python syntax so that you can conveniently build C extensions,
  either to speed up critical code, or to integrate with C/C++ libraries.
* Dask_, Joblib_ or IPyParallel_ for distributed processing with a focus on numeric data.

Quality assurance:

* nose_, a framework for testing Python code, being phased out in preference for pytest_.
* numpydoc_, a standard and library for documenting Scientific Python libraries.

.. _NumPy: http://www.numpy.org/
.. _Matplotlib: http://matplotlib.org/
.. _pandas: http://pandas.pydata.org/
.. _SymPy: http://www.sympy.org/
.. _nose: https://nose.readthedocs.org/en/latest/
.. _IPython: http://ipython.org/
.. _Python: https://www.python.org/
.. _Cython: http://cython.org/
.. _Scikits: http://scikits.appspot.com/scikits
.. _scikit-image: http://scikit-image.org/
.. _scikit-learn: http://scikit-learn.org/
.. _h5py: http://www.h5py.org
.. _PyTables: http://www.pytables.org
.. _Jupyter: http://jupyter.org/
.. _pytest: https://docs.pytest.org/
.. _Dask: https://dask.readthedocs.io/
.. _Joblib: https://joblib.readthedocs.io/
.. _IPyParallel: https://ipyparallel.readthedocs.io/
.. _numpydoc: https://github.com/numpy/numpydoc

.. ETS stuff
.. _Enthought Tool Suite: http://code.enthought.com/projects/index.php
.. _Chaco: http://code.enthought.com/projects/chaco/
.. _Traits: http://code.enthought.com/projects/traits/
.. _Mayavi: http://code.enthought.com/projects/mayavi/
.. _VTK: http://www.vtk.org/

.. Indices and tables
.. ==================

.. * :ref:`genindex`
.. * :ref:`modindex`
.. * :ref:`search`

