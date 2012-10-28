Scientific Computing Tools for Python
=====================================

.. toctree::
    :maxdepth: 1

    install
    faq
    mailing-lists
    dev-zone


SciPy refers to several related but distinct entities:

* The *Scipy Stack*, a collection of open source software for scientific
  computing in Python, and particularly a `specified set of core packages
  <stackspec.html>`_.
* The *community* of people who use and develop this stack.
* Several *conferences* dedicated to scientific computing in Python - Scipy,
  EuroScipy and Scipy.in.
* The *SciPy library*, one component of the Scipy stack, providing many
  numerical routines.

The Scipy Stack
---------------

Core Packages
#############

* Python_, the core language
* NumPy_, the fundamental package for numerical computation
* The SciPy library, a collection of numerical algorithms and domain-specific toolboxes
* Matplotlib_, a mature and popular plotting package, that provides 
  publication-quality 2D plotting as well as rudimentary 3D plotting
* pandas_, providing high-performance, easy to use data structures.
* SymPy_, supporting symbolic mathematics
* IPython_, a heavily enhanced version of the Python interactive interpreter
  designed with scientific and parallel computing in mind
* nose_, a framework for testing code

Other packages
##############

There are many more packages built on this stack - too many to list here. This
is a brief overview of a few major ones:

* Chaco_ is another Python plotting toolkit designed from the ground up to be 
  great for embedded, interactive plotting. It is built on Traits_, both are
  part of the `Enthought Tool Suite`_.
* Mayavi_ is a powerful and user-friendly framework for 3D visualization, 
  built on top of the award winning Visualization Toolkit, VTK_.
* Cython_ extends Python syntax so that you can conveniently build C extensions,
  either to speed up critical code, or to integrate with C/C++ libraries.
* Scikits_ are extra packages for more specific functionality. scikit-image_
  and scikit-learn_ are two of the most prominent.
* h5py_ and PyTables_ can both access data stored in the HDF5 format.

The SciPy Library
-----------------

The SciPy library depends on NumPy_, which provides convenient and 
fast *N*-dimensional array manipulation. The SciPy library is built to
work with NumPy arrays, and provides many user-friendly and efficient 
numerical routines such as routines for numerical integration and 
optimization. Together, they run on all popular operating systems, 
are quick to install, and are free of charge. NumPy and SciPy are easy 
to use, but powerful enough to be depended upon by some of the world's 
leading scientists and engineers.

.. _NumPy: http://numpy.scipy.org/
.. _Matplotlib: http://matplotlib.sourceforge.net/
.. _pandas: http://pandas.pydata.org/
.. _SymPy: http://pandas.pydata.org/
.. _nose: https://nose.readthedocs.org/en/latest/
.. _IPython: http://ipython.org/
.. _Python: http://www.python.org/
.. _Cython: http://cython.org/
.. _Scikits: http://scikits.appspot.com/scikits
.. _scikit-image: http://scikit-image.org/
.. _scikit-learn: http://scikit-learn.org/
.. _h5py: http://code.google.com/p/h5py/
.. _PyTables: http://www.pytables.org/moin

.. ETS stuff
.. _Enthought Tool Suite: http://code.enthought.com/projects/index.php
.. _Chaco: http://code.enthought.com/projects/chaco/
.. _Traits: http://code.enthought.com/projects/traits/
.. _Mayavi: http://code.enthought.com/projects/mayavi/
.. _VTK: http://vtk.org/

.. Indices and tables
.. ==================

.. * :ref:`genindex`
.. * :ref:`modindex`
.. * :ref:`search`

