==========================
Frequently Asked Questions
==========================

NumPy vs. SciPy vs other packages
---------------------------------

What is NumPy?
##############

NumPy is a Python extension module that provides efficient operation on arrays
of homogeneous data.  It allows python to serve as a high-level language for
manipulating numerical data, much like IDL, MATLAB, or Yorick.

Why should I use NumPy rather than IDL, MATLAB, Octave, or Yorick?
##################################################################

As always, you should choose the programming tools that suit your problem
and your environment. Advantages many people cite are that it is open-source,
it doesn't cost anything, it uses the general-purpose language (Python)
rather than a *sui generis* programming language, and it is relatively easy
to connect existing C and Fortran code to the Python interpreter.

What is a NumPy array?
######################

A NumPy array is a multidimensional array of objects all of the same type.
In memory, it is an object which points to a block of memory, keeps track
of the type of data stored in that memory, keeps track of how many
dimensions there are and how large each one is, and - importantly -
the spacing between elements along each axis.

For example, you might have a NumPy array that represents the numbers from
zero to nine, stored as 32-bit integers, one right after another, in a single
block of memory. (for comparison, each Python integer needs to have some type
information stored alongside it). You might also have the array of even
numbers from zero to eight, stored in the same block of memory, but with a
gap of four bytes (one 32-bit integer) between elements. This is called
**striding**, and it means that you can often create a new array referring
to a subset of the elements in an array without copying any data. Such subsets
are called **views**. This is an efficiency gain, obviously, but it also
allows modification of selected elements of an array in various ways.

An important constraint on NumPy arrays is that for a given axis, all the
elements must be spaced by the same number of bytes in memory. NumPy cannot
use double-indirection to access array elements, so indexing modes that would
require this must produce copies. This constraint makes it possible for all
the inner loops in NumPy's internals to be written in efficient C code.

NumPy arrays offer a number of other possibilities, including using a
memory-mapped disk file as the storage space for an array, and **record
arrays**, where each element can have a custom, compound data type.

Python's lists are efficient general-purpose containers. They support
(fairly) efficient insertion, deletion, appending, and concatenation,
and Python's list comprehensions make them easy to construct and manipulate.
However, they have certain limitations: they don't support "vectorized"
operations like elementwise addition and multiplication, and the fact that
they can contain objects of differing types mean that Python must store
type information for every element, and must execute type dispatching
code when operating on each element. This also means that very few list
operations can be carried out by efficient C loops -- each iteration
would require type checks and other Python API bookkeeping.

What is the difference between NumPy and SciPy?
###############################################

NumPy provides core numerical functionality, the N-dimensional array
object.

How do I make plots using NumPy/SciPy?
######################################

Plotting functionality is beyond the scope of NumPy and SciPy, which focus
on numerical objects and algorithms. Several packages exist that integrate
closely with NumPy to produce high quality plots, such as the immensely
popular `Matplotlib <http://matplotlib.sourceforge.net>`_ and the extensible,
modular toolkit `Chaco <http://code.enthought.com/projects/chaco/>`_.

How do I make 3D plots/visualizations using NumPy/SciPy?
########################################################

Like 2D plotting, 3D graphics is beyond the scope of NumPy and SciPy, but
just as in the 2D case, packages exist that integrate with NumPy.
`Matplotlib <http://matplotlib.sourceforge.net>`_ provides basic 3D plotting
in the :mod:`mplot3d` subpackage, whereas
`Mayavi <http://code.enthought.com/projects/mayavi/>`_ provides a wide range
of high-quality 3D visualization features, utilizing the powerful
`VTK <http://www.vtk.org/>`_ engine.

Why both :mod:`numpy.linalg` and :mod:`scipy.linalg`? What's the difference?
############################################################################

:mod:`scipy.linalg` is a more complete wrapping of Fortran LAPACK_ using f2py_.

One of the design goals of NumPy was to make it buildable without a Fortran
compiler, and if  you don't have  LAPACK available NumPy will use its own
implementation. SciPy requires a Fortran compiler to be built, and heavily
depends on wrapped Fortran code.

.. _LAPACK: http://www.netlib.org/lapack/
.. _f2py: http://www.f2py.org/

.. You can check the underlying detected implementation for both of these with
.. ``show_config``:
..
.. ::
..
..    import numpy as np
..    import scipy as sc
..    print np.show_config()
..    print sc.show_config()

The :mod:`linalg` modules in NumPy and SciPy have some common functions but
with different docstrings, and :mod:`scipy.linalg` contains functions not
found in :mod:`numpy.linalg`, such as functions related to
`LU decomposition`_ and the `Schur decomposition`_, multiple ways
of calculating the pseudoinverse, and matrix transcendentals like the `matrix
logarithm`_. Some functions that exist in both have augmented functionality
in :mod:`scipy.linalg`; for example :func:`scipy.linalg.eig` can take a second
matrix argument for solving `generalized eigenvalue problems`_.

.. _LU decomposition: http://en.wikipedia.org/wiki/LU_decomposition
.. _Schur decomposition: http://en.wikipedia.org/wiki/Schur_decomposition
.. _matrix logarithm: http://en.wikipedia.org/wiki/Logarithm_of_a_matrix
.. _generalized eigenvalue problems: http://en.wikipedia.org/wiki/Generalized_eigenvalue_problem#Generalized_eigenvalue_problem

General questions about NumPy
-----------------------------

General questions about SciPy
-----------------------------

Python version support
----------------------

Does NumPy currently work with Python 3.x? What about SciPy?
############################################################

Currently, NumPy and SciPy support only Python versions 2.4 to 2.6.x. Neither
NumPy nor SciPy are currently compatible with Python 3.

When will NumPy support Python 3.x?
###################################

This is a difficult question to answer, and depends largely on developer
resources. NumPy contains a large amount of C code, which must be manually
converted to respect the new Python API. It is hard to predict how long
this will take, but at present we expect a NumPy release for Python 3.x
no earlier than mid-2010.

When will SciPy support Python 3.x?
###################################

SciPy depends heavily on NumPy, so it will not be possible to port
SciPy until NumPy is done. Since we do not have a firm date for
a 3.x-compatible NumPy, a prediction for SciPy is pointless.

Does NumPy/SciPy work with Jython?
##################################

No. Simply put, Jython runs on top of the Java Virtual Machine and has no
way to interface with extensions written in C for the standard Python
(CPython) interpreter.

Does NumPy/SciPy work with IronPython (.NET)?
#############################################

Some users have reported success in using NumPy with `Ironclad
<http://code.google.com/p/ironclad/>`_ on 32-bit Windows. The current status
of Ironclad support for SciPy is unknown, but there are several
complicating factors (namely the Fortran compiler situation on
Windows) that make it less feasible than NumPy.

Basic NumPy usage
-----------------


Advanced NumPy usage
--------------------


Where to get help
-----------------
