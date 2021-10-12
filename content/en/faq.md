---
title: Frequently Asked Questions
sidebar: false
---

# General questions about NumPy

## What is NumPy?

NumPy is a Python extension module that provides efficient operation on
arrays of homogeneous data. It allows Python to serve as a high-level
language for manipulating numerical data, much like, for example, IDL or
MATLAB.

## Why should I use NumPy rather than IDL, MATLAB, or Octave?

As always, you should choose the programming tools that suit your
problem and your environment. Advantages many people cite are that it is
open-source, it doesn\'t cost anything, it uses a general-purpose
programming language (Python), which is very popular and has
high-quality libraries for almost any task available, and it is
relatively easy to connect existing C and Fortran code to the Python
interpreter.

## What is a NumPy array?

A NumPy array is a multidimensional array of objects all of the same
type. In memory, it is an object which points to a block of memory,
keeps track of the type of data stored in that memory, keeps track of
how many dimensions there are and how large each one is, and -
importantly -the spacing between elements along each axis.

For example, you might have a NumPy array that represents the numbers
from zero to nine, stored as 32-bit integers, one right after another,
in a single block of memory. (For comparison, each Python integer needs
to have some type information stored alongside it.) You might also have
the array of even numbers from zero to eight, stored in the same block
of memory, but with a gap of four bytes (one 32-bit integer) between
elements. This is called **striding**, and it means that you can often
create a new array referring to a subset of the elements in an array
without copying any data. Such subsets are called **views**. This is an
efficiency gain, obviously, but it also allows modification of selected
elements of an array in various ways.

An important constraint on NumPy arrays is that, for a given axis, all
the elements must be spaced by the same number of bytes in memory. NumPy
cannot use double-indirection to access array elements, so indexing
modes that would require this must produce copies. This constraint makes
it possible for all the inner loops in NumPy\'s internals to be written
in efficient C code.

NumPy arrays offer a number of other possibilities, including using a
memory-mapped disk file as the storage space for an array, and **record
arrays**, where each element can have a custom, compound data type.

## What advantages do NumPy arrays offer over (nested) Python lists?

Python\'s lists are efficient general-purpose containers. They support
(fairly) efficient insertion, deletion, appending, and concatenation,
and Python\'s list comprehensions make them easy to construct and
manipulate. However, they have certain limitations: they don\'t support
\"vectorized\" operations, like elementwise addition and multiplication,
and the fact that they can contain objects of differing types mean that
Python must store type information for every element, and must execute
type-dispatching code when operating on each element. This also means
that very few list operations can be carried out by efficient C loops
\-- each iteration would require type checks and other Python API
bookkeeping.

## What\'s the story behind Numeric, numarray, and NumPy?

The short version is that Numeric was the original package that provided
efficient homogeneous numeric arrays for Python, but some developers
felt it lacked certain essential features, so they began developing an
independent implementation called numarray. Having two incompatible
implementations of array was clearly a disaster in the making, so NumPy
was designed to be an improvement on both.

Neither Numeric nor numarray is currently supported. NumPy has been the
standard array package for a number of years now. If you use Numeric or
numarray, you should upgrade; NumPy is explicitly designed to have all
the capabilities of both (and already boasts new features found in
neither of its predecessor packages). There are tools available to ease
the upgrade process; only C code should require much modification.

# General questions about SciPy

## What is SciPy?

SciPy is a set of open source (BSD licensed) scientific and numerical
tools for Python. It currently supports special functions, integration,
ordinary differential equation (ODE) solvers, gradient optimization,
parallel programming tools, an expression-to-C++ compiler for fast
execution, and others. A good rule of thumb is that if it\'s covered in
a general textbook on numerical computing (for example, the well-known
Numerical Recipes series), it\'s probably implemented in SciPy.

## How much does it cost?

SciPy is freely available. It is distributed as open source software,
meaning that you have complete access to the source code and can use it
in any way allowed by its liberal BSD license.

## What are SciPy\'s licensing terms?

SciPy\'s license is free for both commercial and non-commercial use, per
the terms of the BSD license
[here](https://github.com/scipy/scipy/blob/master/LICENSE.txt).

## How can SciPy be fast if it is written in an interpreted language like Python?

Actually, the time-critical loops are usually implemented in C, C++, or
Fortran. Parts of SciPy are thin layers of code on top of the scientific
routines that are freely available at <http://www.netlib.org/>. Netlib
is a huge repository of incredibly valuable and robust scientific
algorithms written in C and Fortran. It would be silly to rewrite these
algorithms and would take years to debug them. SciPy uses a variety of
methods to generate \"wrappers\" around these algorithms so that they
can be used in Python. Some wrappers were generated by hand coding them
in C. The rest were generated using either SWIG or
[f2py](http://www.f2py.com). Some of the newer contributions to SciPy
are either written entirely or wrapped with
[Cython](http://cython.org/).

A second answer is that for difficult problems, a better algorithm can
make a tremendous difference in the time it takes to solve a problem.
So, using SciPy\'s built-in algorithms may be much faster than a simple
algorithm coded in C.

## I\'ve found a bug. What do I do?

The SciPy development team works hard to make SciPy as reliable as
possible, but, as in any software product, bugs do occur. If you find
bugs that affect your software, please tell us by entering a ticket in
the [SciPy bug tracker](https://github.com/scipy/scipy/issues), or
[NumPy bug tracker](https://github.com/numpy/numpy/issues), as
appropriate.

## How can I get involved in SciPy?

Drop us a mail on the [mailing lists]({{< ref "/mailing-lists" >}}).
We are keen for more people to help out writing code, unit
tests, documentation (including translations into other languages), and
helping out with the website.

## Is there commercial support available?

Yes, commercial support is offered for SciPy by a number of companies,
for example [Anaconda](https://www.anaconda.com),
[Enthought](https://www.enthought.com), and
[Quansight](https://www.quansight.com).

# NumPy vs. SciPy vs. other packages

## What is the difference between NumPy and SciPy?

In an ideal world, NumPy would contain nothing but the array data type
and the most basic operations: indexing, sorting, reshaping, basic
elementwise functions, etc. All numerical code would reside in SciPy.
However, one of NumPy\'s important goals is compatibility, so NumPy
tries to retain all features supported by either of its predecessors.
Thus, NumPy contains some linear algebra functions and Fourier
transforms, even though these more properly belong in SciPy. In any
case, SciPy contains more fully-featured versions of the linear algebra
modules, as well as many other numerical algorithms. If you are doing
scientific computing with Python, you should probably install both NumPy
and SciPy. Most new features belong in SciPy rather than NumPy.

## How do I make plots using NumPy/SciPy?

Plotting functionality is beyond the scope of NumPy and SciPy, which
focus on numerical objects and algorithms. Several packages exist that
integrate closely with NumPy and Pandas to produce high quality plots,
such as the immensely popular [Matplotlib](http://matplotlib.org). Other
popular options are [Bokeh](https://bokeh.pydata.org/en/latest),
[Plotly](https://plot.ly), [Altair](https://altair-viz.github.io), and
[Chaco](http://code.enthought.com/projects/chaco).

## How do I make 3D plots/visualizations using NumPy/SciPy?

Like 2D plotting, 3D graphics is beyond the scope of NumPy and SciPy,
but just as in the 2D case, packages exist that integrate with NumPy.
[Matplotlib](http://matplotlib.org) provides basic 3D plotting in the
`mplot3d` subpackage, whereas
[Mayavi](http://code.enthought.com/projects/mayavi/) provides a wide
range of high-quality 3D visualization features, utilizing the powerful
[VTK](http://www.vtk.org/) engine.

## Why both `numpy.linalg` and `scipy.linalg`? What\'s the difference?

`scipy.linalg` is a more complete wrapping
of Fortran [LAPACK](http://www.netlib.org/lapack/) using
[f2py](http://www.f2py.com).

One of the design goals of NumPy was to make it buildable without a
Fortran compiler, and if you don\'t have LAPACK available, NumPy will
use its own implementation. SciPy requires a Fortran compiler to be
built, and heavily depends on wrapped Fortran code.

The `linalg` modules in NumPy and SciPy
have some common functions but with different docstrings, and
`scipy.linalg` contains functions not
found in `numpy.linalg`, such as functions
related to [LU
decomposition](https://en.wikipedia.org/wiki/LU_decomposition) and the
[Schur
decomposition](https://en.wikipedia.org/wiki/Schur_decomposition),
multiple ways of calculating the pseudoinverse, and matrix
transcendentals, like the [matrix
logarithm](https://en.wikipedia.org/wiki/Logarithm_of_a_matrix). Some
functions that exist in both have augmented functionality in
`scipy.linalg`; for example,
`scipy.linalg.eig` can take a second
matrix argument for solving [generalized eigenvalue
problems](https://en.wikipedia.org/wiki/Generalized_eigenvalue_problem).

# Python version support

## Do NumPy and SciPytill support Python 2.7?

The last version of NumPy to support Python 2.7 is NumPy 1.16.x. The
last SciPy version to do so is SciPy 1.2.x. The first release of NumPy
to support Python 3.x was NumPy 1.5.0. Python 3 support in SciPy was
introduced in SciPy 0.9.0.

## Does NumPy/SciPy work with PyPy?

In general, yes. Recent improvements in [PyPy](http://pypy.org) have
made the scientific Python stack work with PyPy. The NumPy and SciPy
projects run PyPy in continuous integration and aim to further improve
support over time. Since much of NumPy and SciPy is implemented as C
extension modules, the code may not run any faster (for most cases it\'s
significantly slower still, however, PyPy is actively working on
improving this). As always when benchmarking, your experience is the
best guide.

## Does NumPy/SciPy work with Jython or C\#/.NET?

No, neither is supported. Jython never worked, because it runs on top of
the Java Virtual Machine and has no way to interface with extensions
written in C for the standard Python (CPython) interpreter.

Some years ago, there was an effort to make NumPy and SciPy compatible
with .NET. Some users at the time reported success in using NumPy with
[Ironclad](https://code.google.com/archive/p/ironclad) on 32-bit
Windows.

# Basic NumPy/SciPy usage

## What is the preferred way to check for an empty (zero-element) array?

If you are certain a variable is an array, then use the size attribute.
If the variable is a list or other sequence type, use
`len`. The size attribute is preferable
to len because:

    >>> a = numpy.zeros((1,0))
    >>> a.size
    0

whereas

    >>> len(a)
    1

## I want to load data from a text file. How do I make this code more efficient?

Use `numpy.loadtxt`. Even if your text
file has header and footer lines or comments, loadtxt can almost
certainly read it; it is convenient and efficient.

If you find this still too slow, you can try pandas (it has a faster csv
reader for example). If that doesn\'t help, you should consider changing
to a more efficient file format than plain text. There are a large
number of alternatives, depending on your needs (and on which version of
NumPy/SciPy you are using):

-   Text files: slow, huge, portable, human-readable; built into NumPy
-   pickle: somewhat slow, somewhat portable (may be incompatible with
    different NumPy versions); built into NumPy
-   [HDF5](http://www.hdfgroup.org/): high-powered kitchen-sink format;
    both [PyTables](http://www.pytables.org/) and
    [h5py](http://www.h5py.org/) provide a NumPy-friendly interface on
    top of the core HDF5 library written in C
-   [FITS](http://fits.gsfc.nasa.gov/): standard kitchen-sink format in
    astronomy; the [astropy](http://www.astropy.org/) library provides a
    convenient Python interface through its
    [io.fits](http://docs.astropy.org/en/stable/io/fits/index.html)
    package
-   [.npy](http://docs.scipy.org/doc/numpy/neps/npy-format.html): NumPy
    native binary data format, simple, efficient, portable; built into
    NumPy as of 1.0.5

## What is the difference between matrices and arrays?

*Note: NumPy matrices will be deprecated, do not use them for new code.
The rest of the answer below is kept for historical reasons.*

NumPy\'s basic data type is the multidimensional array. These can be 1-D
(that is, one index, like a list or a vector), 2-D (two indices, like an
image), 3-D, or more (0-D arrays exist and are slightly strange corner
cases). They support various operations, including addition,
subtraction, multiplication, exponentiation, and so on - but all of
these are *elementwise* operations. If you want matrix multiplication
between two 2-D arrays, the function `numpy.dot`
or the built-in Python operator `@` do this. It also works
fine for getting the matrix product of a 2-D array and a 1-D array, in
either direction, or two 1-D arrays. If you want some kind of matrix
multiplication-like operation on higher-dimensional arrays (tensor
contraction), you need to think over which indices you want to be
contracting. Some combination of `tensordot`
and `rollaxis` should do what you want.

However, some users find that they are doing so many matrix
multiplications that always having to write `dot` as a prefix is too
cumbersome, or they really want to keep row and column vectors separate.
For these users, there is a matrix class. This is simply a transparent
wrapper around arrays that forces arrays to be at least 2-D, and that
overloads the multiplication and exponentiation operations.
Multiplication becomes matrix multiplication, and exponentiation becomes
matrix exponentiation. If you want elementwise multiplication, use
`numpy.multiply`.

The function `asmatrix` converts an array
into a matrix (without ever copying any data);
`asarray` converts matrices to arrays.
`asanyarray` makes sure that the result
is either a matrix or an array (but not, say, a list). Unfortunately, a
few of NumPy\'s many functions use `asarray` when they should use `asanyarray`,
so, from time to time, you may find your matrices
accidentally getting converted into arrays. Just use
`asmatrix` on the output of these
operations and consider filing a bug.

## Why not just have a separate operator for matrix multiplication?

From Python 3.5, the `@` symbol will be defined as a matrix
multiplication operator, and NumPy and SciPy will make use of this. This
addition was the subject of [PEP
465](https://www.python.org/dev/peps/pep-0465/). The separate matrix and
array types exist to work around the lack of this operator in earlier
versions of Python.

## How do I find the indices of an array where some condition is true?

The preferred idiom for doing this is to use the function
`numpy.nonzero`, or the
`nonzero` method of an array. Given an
array `a`, the condition `a > 3` returns a boolean array, and since
`False` is interpreted as 0 in Python and NumPy, `np.nonzero(a > 3)`
yields the indices of `a` where the condition is true.

    >>> import numpy as np
    >>> a = np.array([[1,2,3],[4,5,6],[7,8,9]])
    >>> a > 3
    array([[False, False, False],
           [ True,  True,  True],
           [ True,  True,  True]], dtype=bool)
    >>> np.nonzero(a > 3)
    (array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))

The `nonzero` method of the boolean array
can also be called.

    >>> (a > 3).nonzero()
    (array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))

## How do I count the number of times each value appears in an array of integers?

Use `numpy.bincount`. The resulting array
is

    >>> arr = numpy.array([0, 5, 4, 0, 4, 4, 3, 0, 0, 5, 2, 1, 1, 9])
    >>> numpy.bincount(arr)

The argument to `bincount` must consist
of positive integers or booleans. Negative integers are not supported.

# Advanced NumPy usage

## Does NumPy support `nan`?

`nan`, short for \"not a number\", is a
special floating-point value defined by the IEEE-754 specification,
along with `inf` (infinity) and other
values and behaviours. In theory, IEEE `nan`
was specifically designed to address the problem of
missing values, but the reality is that different platforms behave
differently, making life more difficult. On some platforms, the presence
of `nan` slows calculations 10-100
times. For integer data, no `nan` value
exists.

Despite all these issues NumPy (and SciPy) endeavor to support IEEE-754
behavior (based on NumPy\'s predecessor numarray). The most significant
challenge is the lack of cross-platform support within Python itself.
Because NumPy is written to take advantage of C99, which supports
IEEE-754, it can side-step such issues internally, but users may still
face problems when, for example, comparing values within the Python
interpreter.

Those wishing to avoid potential headaches will be interested in an
alternative solution, which has a long history in NumPy\'s predecessors
\-- **masked arrays**. Masked arrays are standard arrays with a second
\"mask\" array of the same shape to indicate whether the value is
present or missing. Masked arrays are the domain of the
`numpy.ma` module, and continue the
cross-platform Numeric/numarray tradition. See
\"Cookbook/Matplotlib/Plotting values with masked arrays\" (*TODO*) for
example, to avoid plotting missing data in
[Matplotlib](http://matplotlib.org). Despite their additional memory
requirement, masked arrays are faster than `nans` on many floating point
units. See also the [NumPy documentation on masked
arrays](http://docs.scipy.org/doc/numpy/reference/maskedarray.html).

Another good option is to use pandas - it uses `nan` in a similar way to
NumPy for floating-point data, and since pandas 0.25.0 also supports
missing integer values.

## Why doesn\'t A\[\[0, 1, 1, 2\]\] += 1 do what I think it should?

This comes up from time to time on the . See
[here](https://mail.scipy.org/pipermail/numpy-discussion/2006-March/006877.html)
for one extensive discussion.

    >>> A = numpy.zeros(3)
    >>> A[[0,1,1,2]] += 1
    >>> A
    array([ 1.,  1.,  1.])

One might, quite reasonably, have expected A to contain \[1,2,1\].
Unfortunately, this is not what is implemented in NumPy. Moreover, the
[Python Reference
Manual](https://docs.python.org/reference/simple_stmts.html#grammar-token-augmented_assignment_stmt)
specifies that

    >>> x = x + y

and

    >>> x += y

should result in `x` having the same value (though not necessarily the
same identity). Moreover, even if the NumPy developers wanted to modify
this behavior, Python does not provide an overloadable
`__indexed_iadd__` function; the code
acts like

    >>> tmp = A.__getitem__([0,1,1,2])
    >>> tmp.__iadd__(1)
    >>> A.__setitem__([0,1,1,2],tmp)

This leads to other peculiarities sometimes; if the indexing operation
is actually able to provide a view rather than a copy, the
`__iadd__` writes to the array, then the
view is copied into the array, so that the array is written to twice.

However, do not despair! NumPy does contain functionality for this type
of behavior, and it can be obtained by using the ufunc
`at`, which is an attribute of the
addition (`np.add`), subtraction (`np.subtract`), multiplication
(`np.multiply`), and division (`np.divide`) ufuncs between a matrix and
a scalar:

    >>> A = numpy.zeros(3)
    >>> numpy.add.at(A, [0, 1, 1, 2], 1)
    >>> A
    array([ 1.,  2.,  1.])

# Where to get help

You can ask questions with the [SciPy tag on
StackOverflow](http://stackoverflow.com/questions/tagged/scipy), or on
the scipy-user [mailing lists]({{< ref "/mailing-lists" >}}).
Search for an answer first, because someone may already
have found a solution to your problem, and using that will save everyone
time.
