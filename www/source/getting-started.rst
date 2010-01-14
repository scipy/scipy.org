===============
Getting Started
===============

This page is intended to help the beginner get a handle on SciPy and be
productive with it as fast as possible. 

What are NumPy, SciPy and matplotlib?
-------------------------------------

* **Python** is a general purpose programming language. It is interpreted and
  dynamically typed and is very suited for interactive work and quick
  prototyping, while being powerful enough to write large applications in.

* **NumPy** is a Python extension module, written mostly in C, that defines
  the numerical array and matrix types and basic operations on them.

* **SciPy** is another Python library that uses NumPy to do advanced math,
  signal processing, optimization, statistics and much more.

* **matplotlib** is a Python library that facilitates publication-quality 
  interactive plotting.

What are NumPy, SciPy, and matplotlib?
--------------------------------------

SciPy and friends can be used for a variety of tasks:

* First of all, they are great for performing calculation relying heavily on
  mathematical and numerical operations. They can work natively with matrices
  and arrays, perform operations on them, find eigenvectors, compute integrals,
  solve differential equations.
* NumPy's array class (which is used to implement the matrix class) is
  implemented with speed in mind, so accessing NumPy arrays is faster than
  accessing Python lists. Further, NumPy implements an **array language,** so 
  that most loops are not needed. For example, Plain Python (and similarly 
  for C, etc.): 

  ::
  
      a = range(10000000)
      b = range(10000000)
      c = []

      for i in range(len(a)):
          c.append(a[i] + b[i])

  This loop can take up to 10 seconds on a several GHz processor. With NumPy:

  ::
      
      import numpy as np
      a = np.arange(10000000)
      b = np.arange(10000000)
      c = a + b
  
  Not only is this much more compact and readable, it is almost instant
  by comparison, and even the NumPy import is faster than the loop in plain
  Python. Why? Python is an interpreted language with dynamic typing. This
  means that on each loop iteration it needs to check the type of the operands
  a and b to select the right variant of the '+' operator for those types (in
  Python, '+' is used for many things, like concatenating strings, and lists
  can have elements of different types). The NumPy add function, which Python
  automatically selects when one of the operands of '+' is a NumPy array, does
  this check only once. It then executes the "real" addition loop in a compiled
  C function. This is very fast by comparison to the interpreted loop in plain
  Python.

  There is a sizeable collection of both generic and application-specific
  numerical code written in or using numpy and scipy. See the
  :ref:`topical-software` index for a partial list. Python has many advanced
  modules to build interactive applications (for instance Traits_ or
  wxPython_). Using SciPy with these is the quickest way to build a 
  fully-fledged scientific application.

* Using IPython_ makes interactive work easy. Data processing, exploration of
  numerical models, trying out operations on-the-fly allows to go quickly from
  an idea to a result (see the article on IPython). 

* The matplotlib_ module produces high quality plots. With it you can turn your
  data or your models into figures for presentations or articles. No need to do
  the numerical work in one program, save the data, and plot it with another
  program.

How to work with SciPy
----------------------

Python is a language, it comes with several user interfaces. There is no single
program that you can start and that gives an integrated user experience.
Instead of that there are dozens of way to work with Python.

The most common is to use the advanced interactive Python shell IPython_ to
enter commands and run scripts. Scripts can be written with any text editor,
for instance Emacs_, Vim_ or even Notepad.

Neither SciPy nor NumPy provide, by default, plotting functions. They are just
numerical tools. The recommended plotting package is matplotlib_.

Learning to work with SciPy
---------------------------

To learn more about the Python language, the `official Python tutorial`_ is
an excellent way to become familiar with the Python syntax and objects. An 
alternative introduction can be found in the free online book `Dive Into 
Python <http://diveintopython.org/>`_ by Mark Pilgrim.


An example session
##################

.. sourcecode:: ipython

    Python 2.5.1 (r251:54863, May  2 2007, 16:27:44)
    Type "copyright", "credits" or "license" for more information.
    IPython 0.7.3 -- An enhanced Interactive Python.
    ?       -> Introduction to IPython's features.
    %magic  -> Information about IPython's 'magic' % functions.
    help    -> Python's own help system.
    object? -> Details about 'object'. ?object also works, ?? prints more.
      Welcome to pylab, a matplotlib-based Python environment.
      For more information, type 'help(pylab)'.

IPython offers a great many convenience features, such as tab-completion of
python functions and a good help system.

.. sourcecode:: ipython

    In [1]: %logstart
    Activating auto-logging. Current session state plus future input saved.
    Filename       : ipython_log.py
    Mode           : rotate
    Output logging : False
    Raw input log  : False
    Timestamping   : False
    State          : active


.. _Traits: http://code.enthought.com/projects/traits/
.. _wxPython: http://www.wxpython.org/
.. _IPython: http://ipython.scipy.org/
.. _matplotlib: http://matplotlib.sourceforge.net/
.. _Emacs: http://www.gnu.org/software/emacs/
.. _Vim: http://www.vim.org/
.. _official Python tutorial: http://docs.python.org/tutorial/
