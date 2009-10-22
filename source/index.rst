Scientific Computing Tools For Python
=====================================

.. toctree::
    :maxdepth: 2
    
    download
    faq
    dev-zone


SciPy (pronounced "Sigh Pie") is, broadly speaking, an ecosystem of 
open-source software for mathematics, science, and engineering. 

SciPy refers to three related but distinct things:

* A *software library*, a collection of scientific toolboxes based on NumPy_;
* A *community* surrounding an open source software tool stack, including but not limited to NumPy and SciPy;
* An annual *conference* dedicated to scientific computing with Python.


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

The Tool Stack for Scientific Computing With Python
---------------------------------------------------

Unlike other environments, the SciPy toolstack encompasses many
individual packages. 

Core Tools
##########

* Python_, the core language (currently, most tools depend on **Python 2.x**)
* NumPy_, the fundamental package 
* SciPy, A collection of numerical algorithms and domain-specific toolboxes
* For interactive scientific computing, the most popular solution is
  IPython_ - a heavily enhanced version of the Python interactive interpreter
  designed with scientific and parallel computing in mind.

2D Visualization
################

* Matplotlib_ is a very mature and popular plotting package, that provides 
  publication-quality 2D plotting as well as rudimentary 3D plotting.
* Chaco_ is another Python plotting toolkit designed from the ground up to be 
  great for embedded, interactive plotting. It is built on Traits_, both are
  part of the `Enthought Tool Suite`_.

3D Visualization
################

* Mayavi_ is a powerful and user-friendly framework for 3D visualization, 
  built on top of the award winning Visualization Toolkit, VTK_. It features
  an (optional) rich user interface with dialogs to interact with all data 
  and objects in the visualization, a simple and clean scripting
  interface in Python (including one-liners) and an object-oriented 
  programming interface. Mayavi integrates seamlessly with NumPy and SciPy, 
  and is part of the `Enthought Tool Suite`_. It includes the TVTK library,
  a Traits_-enabled Pythonic API for VTK, used to create custom Mayavi
  modules.

.. _NumPy: http://numpy.scipy.org/
.. _Matplotlib: http://matplotlib.sourceforge.net/
.. _IPython: http://ipython.scipy.org/
.. _Python: http://www.python.org/

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

