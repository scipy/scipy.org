.. _faq-top:

==========================
Frequently Asked Questions
==========================

.. toctree::
    :hidden:

.. contents::
    :local:

General questions about NumPy
-----------------------------

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

What advantages do NumPy arrays offer over (nested) Python lists?
#################################################################

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

What's the story with Numeric, numarray, and NumPy?
###################################################

The short version is that Numeric was the original package that provided
efficient homogeneous numeric arrays for Python, but some developers felt
it lacked certain essential features, so they began developing an independent
implementation called numarray. Having two incompatible implementations of
array was clearly a disaster in the making, so NumPy was designed to be an
improvement on both.

Neither Numeric nor numarray is currently supported. NumPy has been the
standard array package for a number of years now. If you use Numeric or
numarray, you should upgrade; NumPy is explicitly designed to have all the
capabilities of both (and already boasts new features found in neither
of its predecessor packages). There are tools available to ease the upgrade
process; only C code should require much modification.

General questions about SciPy
-----------------------------

What is SciPy?
##############

SciPy is a set of open source (BSD licensed) scientific and numerical tools
for Python. It currently supports special functions, integration, ordinary
differential equation (ODE) solvers, gradient optimization, parallel
programming tools, an expression-to-C++ compiler for fast execution,
and others. A good rule of thumb is that if it's covered in a general textbook 
on numerical computing (for example, the well-known Numerical Recipes series), 
it's probably implemented in scipy. 

How much does it cost?
######################

SciPy is freely available. It is distributed as open source software,
meaning that you have complete access to the source code and can use it in
any way allowed by its liberal BSD license.

What are SciPy's licensing terms?
#################################

SciPy's license is free for both commercial and non-commercial use, per the terms
of the BSD license `here <https://github.com/scipy/scipy/blob/master/LICENSE.txt>`__.

How can SciPy be fast if it is written in an interpreted language like Python?
##############################################################################

Actually, the time-critical loops are usually implemented in C or Fortran.
Much of SciPy is a thin layer of code on top of the scientific routines that
are freely available at http://www.netlib.org/. Netlib is a huge repository
of incredibly valuable and robust scientific algorithms written in C and
Fortran. It would be silly to rewrite these algorithms and would take years
to debug them. SciPy uses a variety of methods to generate "wrappers" around
these algorithms so that they can be used in Python. Some wrappers were
generated by hand coding them in C. The rest were generated using either SWIG
or f2py_. Some of the newer contributions to SciPy are either written 
entirely or wrapped with Cython_.

.. _Cython: http://cython.org/

A second answer is that for difficult problems, a better algorithm can make 
a tremendous difference in the time it takes to solve a problem. So using 
scipy's built-in algorithms may be much faster than a simple algorithm 
coded in C. 

I've found a bug.  What do I do?
################################

The SciPy development team works hard to make SciPy as reliable as possible,
but, as in any software product, bugs do occur. If you find bugs that affect
your software, please tell us by entering a ticket in the
`SciPy bug tracker <https://github.com/scipy/scipy/issues>`_,
or `NumPy bug tracker <https://github.com/numpy/numpy/issues>`_,
as appropriate.

How can I get involved in SciPy?
################################

Drop us a mail on the :doc:`mailing lists <mailing-lists>`.  We are
keen for more people to help out writing code, unit tests,
documentation (including translations into other languages), and
helping out with the website.

Is there commercial support available?
######################################

Yes, commercial support is offered for SciPy by Enthought_. Please contact
eric@enthought.com for more information.

NumPy vs. SciPy vs. other packages
----------------------------------

What is the difference between NumPy and SciPy?
###############################################

In an ideal world, NumPy would contain nothing but the array data type and
the most basic operations: indexing, sorting, reshaping, basic elementwise
functions, et cetera. All numerical code would reside in SciPy. However,
one of NumPy's important goals is compatibility, so NumPy tries to retain
all features supported by either of its predecessors. Thus NumPy contains
some linear algebra functions, even though these more properly belong in
SciPy. In any case, SciPy contains more fully-featured versions of the
linear algebra modules, as well as many other numerical algorithms. If you
are doing scientific computing with python, you should probably install
both NumPy and SciPy. Most new features belong in SciPy rather than NumPy.

How do I make plots using NumPy/SciPy?
######################################

Plotting functionality is beyond the scope of NumPy and SciPy, which focus
on numerical objects and algorithms. Several packages exist that integrate
closely with NumPy to produce high quality plots, such as the immensely
popular `Matplotlib`_ and the extensible, modular toolkit
`Chaco <http://code.enthought.com/projects/chaco/>`_.

How do I make 3D plots/visualizations using NumPy/SciPy?
########################################################

Like 2D plotting, 3D graphics is beyond the scope of NumPy and SciPy, but
just as in the 2D case, packages exist that integrate with NumPy.
`Matplotlib`_ provides basic 3D plotting in the :mod:`mplot3d` subpackage, whereas
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

.. _LU decomposition: https://en.wikipedia.org/wiki/LU_decomposition
.. _Schur decomposition: https://en.wikipedia.org/wiki/Schur_decomposition
.. _matrix logarithm: https://en.wikipedia.org/wiki/Logarithm_of_a_matrix
.. _generalized eigenvalue problems: GEVP_ 
.. _GEVP: https://en.wikipedia.org/wiki/Generalized_eigenvalue_problem

Python version support
----------------------

Do NumPy and SciPy support Python 3.x?
######################################

NumPy and SciPy support the Python 2.x series, (versions 2.6 and 2.7),
as well as Python 3.2 and newer. The first release of NumPy to
support Python 3 was NumPy 1.5.0. Python 3 support in SciPy starts
with version 0.9.0.

Does NumPy/SciPy work with Jython?
##################################

No. Simply put, Jython runs on top of the Java Virtual Machine and has no
way to interface with extensions written in C for the standard Python
(CPython) interpreter.

Does NumPy/SciPy work with IronPython (.NET)?
#############################################

Some users have reported success in using NumPy with `Ironclad
<https://code.google.com/archive/p/ironclad>`_ on 32-bit Windows. The current status
of Ironclad support for SciPy is unknown, but there are several
complicating factors (namely the Fortran compiler situation on
Windows) that make it less feasible than NumPy.

Basic NumPy/SciPy usage
-----------------------

What is the preferred way to check for an empty (zero element) array?
#####################################################################

If you are certain a variable is an array, then use the size attribute.
If the variable may be a list or other sequence type, use :func:`len`.
The size attribute is preferable to len because:

::

       >>> a = numpy.zeros((1,0))
       >>> a.size
       0

whereas

::

       >>> len(a)
       1

I want to load data from a text file. How do I make this code more efficient?
#############################################################################

Use :func:`numpy.loadtxt`. Even if your text file has header and footer
lines or comments, loadtxt can almost certainly read it; it is convenient and
efficient.

If you find this still too slow, you should consider changing to a more 
efficient file format than plain text.  There are a large number of 
alternatives, depending on your needs (and on which version of 
NumPy/SciPy you are using):

* Text files: slow, huge, portable, human-readable; built into NumPy
* Raw binary: no metadata, totally unportable, fast; built into NumPy
* pickle: somewhat slow, somewhat portable (may be incompatible with
  different NumPy versions); built into NumPy
* MATLAB format: portable; built into SciPy (:func:`scipy.io.loadmat`)
* HDF5_: high-powered kitchen-sink format; both PyTables_ and h5py_ provide
  a NumPy friendly interface on top of the core HDF5 library written in C.
* FITS_: standard kitchen-sink format in astronomy; the astropy_ library
  provides a convenient Python interface through its `io.fits`_ package.
* `.npy`_: NumPy native binary data format, simple, efficient, portable;
  built into NumPy as of 1.0.5.

.. _HDF5: http://www.hdfgroup.org/
.. _PyTables: http://www.pytables.org/
.. _h5py: http://www.h5py.org/
.. _FITS: http://fits.gsfc.nasa.gov/
.. _astropy: http://www.astropy.org/
.. _io.fits: http://docs.astropy.org/en/stable/io/fits/index.html
.. _.npy: http://docs.scipy.org/doc/numpy/neps/npy-format.html

What is the difference between matrices and arrays?
###################################################

NumPy's basic data type is the multidimensional array. These can be
one-dimensional (that is, one index, like a list or a vector),
two-dimensional (two indices, like an image), three-dimensional, or more
(zero-dimensional arrays exist and are a slightly strange corner case).
They support various operations, including addition, subtraction,
multiplication, exponentiation, and so on - but all of these are
*elementwise* operations. If you want matrix multiplication between two
two-dimensional arrays, the function :func:`numpy.dot` does this.
It also works fine for getting the matrix product of a two-dimensional
array and a one-dimensional array, in either direction, or two
one-dimensional arrays. If you want some kind of matrix multiplication-like
operation on higher-dimensional arrays (tensor contraction), you need to
think which indices you want to be contracting over. Some combination
of :func:`tensordot` and :func:`rollaxis` should do what you want.

However, some users find that they are doing so many matrix multiplications
that always having to write ``dot`` as a prefix is too cumbersome, or they
really want to keep row and column vectors separate. For these users, there
is a matrix class. This is simply a transparent wrapper around arrays that
forces arrays to be at least two-dimensional, and that overloads the
multiplication and exponentiation operations. Multiplication becomes matrix
multiplication, and exponentiation becomes matrix exponentiation. If you want
elementwise multiplication, use :func:`numpy.multiply`.

The function :func:`asmatrix` converts an array into a matrix (without ever
copying any data); :func:`asarray` converts matrices to arrays.
:func:`asanyarray` makes sure that the result is either a matrix or an array
(but not, say, a list). Unfortunately, a few of NumPy's many functions use
:func:`asarray` when they should use :func:`asanyarray`, so from time to time
you may find your matrices accidentally get converted into arrays. Just use
:func:`asmatrix` on the output of these operations, and consider filing a bug.

Why not just have a separate operator for matrix multiplication?
################################################################

From Python 3.5, the ``@`` symbol will be defined as a matrix multiplication
operator, and Numpy and Scipy will make use of this. This addition was the
subject of `PEP 465 <https://www.python.org/dev/peps/pep-0465/>`_. The separate
matrix and array types exist to work around the lack of this operator in earlier
versions of Python.

How do I find the indices of an array where some condition is true?
###################################################################

The prefered idiom for doing this is to use the function :func:`numpy.nonzero`
, or the :meth:`nonzero` method of an array. Given an array ``a``, the
condition ``a > 3`` returns a boolean array and since ``False`` is
interpreted as 0 in Python and NumPy, ``np.nonzero(a > 3)`` yields the indices
of ``a`` where the condition is true.

::

   >>> import numpy as np
   >>> a = np.array([[1,2,3],[4,5,6],[7,8,9]])
   >>> a > 3
   array([[False, False, False],
          [ True,  True,  True],
          [ True,  True,  True]], dtype=bool)
   >>> np.nonzero(a > 3)
   (array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))

The :meth:`nonzero` method of the boolean array can also be called.

::

   >>> (a > 3).nonzero()
   (array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))

How do I count the number of times each value appears in an array of integers?
##############################################################################

Use :func:`numpy.bincount`. The resulting array is 

::

   >>> arr = numpy.array([0, 5, 4, 0, 4, 4, 3, 0, 0, 5, 2, 1, 1, 9])
   >>> numpy.bincount(arr)

The argument to :func:`bincount` must consist of positive integers or booleans.
Negative integers are not supported.

Advanced NumPy usage
--------------------

Does NumPy support :const:`nan`?
################################

:const:`nan`, short for "not a number", is a special floating point value
defined by the IEEE-754 specification along with :const:`inf` (infinity)
and other  values and behaviours. In theory, IEEE :const:`nan` was
specifically designed to address the problem of missing values, but the
reality is that different platforms behave differently, making life more
difficult. On some platforms, the presence of :const:`nan` slows calculations
10-100 times. For integer data, no :const:`nan` value exists. Some
platforms, notably older Crays and VAX machines, don't support
:const:`nan` whatsoever.

Despite all these issues NumPy (and SciPy) endeavor to support IEEE-754
behaviour (based on NumPy's predecessor numarray). The most significant
challenge is a lack of cross-platform support within Python itself. Because
NumPy is written to take advantage of C99, which supports IEEE-754,
it can side-step such issues internally, but users may still face problems
when, for example, comparing values within Python interpreter. In fact,
NumPy currently assumes IEEE-754 behavior of the underlying floats, a
decision that may have to be revisited when the VAX community rises up
in rebellion.

Those wishing to avoid potential headaches will be interested in an
alternative solution which has a long history in NumPy's predecessors
-- **masked arrays**. Masked arrays are standard arrays with a second
"mask" array of the same shape to indicate whether the value is present
or missing. Masked arrays are the domain of the :mod:`numpy.ma` module,
and continue the cross-platform Numeric/numarray tradition. See
"Cookbook/Matplotlib/Plotting values with masked arrays" (*TODO*) for
example, to avoid plotting missing data in Matplotlib_. Despite their
additional memory requirement, masked arrays are faster than nans on
many floating point units. See also the `NumPy documentation on masked
arrays <http://docs.scipy.org/doc/numpy/reference/maskedarray.html>`_.

Why doesn't A[[0, 1, 1, 2]] += 1 do what I think it should?
###########################################################

This comes up from time to time on the :doc:`mailing list
<mailing-lists>`. See `here
<https://mail.scipy.org/pipermail/numpy-discussion/2006-March/006877.html>`_
for one extensive discussion.

::

   >>> A = numpy.zeros(3)
   >>> A[[0,1,1,2]] += 1
   >>> A
   array([ 1.,  1.,  1.])

One might, quite reasonably, have expected A to contain [1,2,1].
Unfortunately this is not what is implemented in NumPy. Moreover, the
`Python Reference Manual <https://docs.python.org/reference/simple_stmts.html#grammar-token-augmented_assignment_stmt>`_
specifies that

::

   >>> x = x + y

and

::

   >>> x += y

should result in ``x`` having the same value (though not necessarily the same
identity). Moreover, even if the NumPy developers wanted to modify this behaviour,
Python does not provide an overloadable :meth:`__indexed_iadd__` function;
the code acts like

::

   >>> tmp = A.__getitem__([0,1,1,2])
   >>> tmp.__iadd__(1)
   >>> A.__setitem__([0,1,1,2],tmp)

This leads to other peculiarities sometimes; if the indexing operation is
actually able to provide a view rather than a copy, the :meth:`__iadd__`
writes to the array, then the view is copied into the array, so that the
array is written to twice.

However, do not despair! NumPy does contain functionality for this type of behaviour, and it can be
obtained by using the ufunc :meth:`at`, which is an attribute of the addition (``np.add``), subtraction
(``np.subtract``), multiplication (``np.multiply``), and division (``np.divide``) ufuncs between a matrix
and a scalar:

::

   >>> A = numpy.zeros(3)
   >>> numpy.add.at(A, [0, 1, 1, 2], 1)
   >>> A
   array([ 1.,  2.,  1.])

Where to get help
-----------------

You can ask questions with the `Scipy tag on Stackoverflow
<http://stackoverflow.com/questions/tagged/scipy>`_, or on the scipy-user
:doc:`mailing list <mailing-lists>`. Search for an answer first, because someone
may already have found a solution to your problem, and using that will save
everyone time.

.. Links
.. _f2py: http://www.f2py.com/
.. _Enthought: https://www.enthought.com/
.. _Matplotlib: http://matplotlib.org/
