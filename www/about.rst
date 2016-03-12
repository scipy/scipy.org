.. _content:

Scientific Computing Tools for Python
=====================================

.. toctree::
   :hidden:

   stackspec

SciPy refers to several related but distinct entities:

* The *SciPy Stack*, a collection of open source software for scientific
  computing in Python, and particularly a :doc:`specified set of core packages
  <stackspec>`.
* The *community* of people who use and develop this stack.
* Several *conferences* dedicated to scientific computing in Python - SciPy,
  EuroSciPy and SciPy.in.
* The :doc:`SciPy library <scipylib/index>`, one component of the SciPy stack,
  providing many numerical routines.

The SciPy Stack
---------------

Core Packages
#############

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
* pandas_, providing high-performance, easy to use data structures.
* SymPy_, for symbolic mathematics and computer algebra.
* IPython_, a rich interactive interface, letting you quickly process data and
  test ideas. The **IPython notebook** works in your web browser, allowing you
  to document your computation in an easily reproducible form.
* nose_, a framework for testing Python code.

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

See the :doc:`topical-software` page for more.

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

