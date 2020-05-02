===============
Getting started
===============

Got the SciPy packages installed? Wondering what to do next?

"Scientific Python" doesn't exist without "Python". SciPy skills need to build
on a foundation of standard programming skills. While Python itself has an
`official tutorial <https://docs.python.org/3/tutorial/>`_ , countless
resources exist online, in hard copy, in person, or whatever format you prefer.

Just remember to have fun, make mistakes, and persevere.


Where to write
==============

`Jupyter <https://jupyter.org/>`_ notebooks combine code, markdown, and more in
an interactive setting. They are an excellent tool for learning, collaborating,
experimenting, or documenting. Notebooks can run on your local machine, and
`MyBinder <https://mybinder.org/>`_ also serves Jupyter notebooks to the
browser without the need for anything on the local computer. For example,
`MyBinder Elegant Scipy <https://mybinder.org/v2/gh/elegant-scipy/notebooks/master?filepath=index.ipynb>`_
provides an interactive tutorial.

Jupyter runs by calling to `IPython <https://ipython.org/>`_ behind the scenes,
but IPython itself also acts as a standalone tool. A *command-line* of
individual statements and returned values, IPython is useful for debugging and
experimenting.

Code Editors and IDEs (Integrated Development Environments) facilitate the
writing of scripts, packages, and libraries. These tools handle projects, like
SciPy itself, that start to grow larger and more complicated. Separate files
can hold frequently used functions, types, variables, and analysis scripts for
simpler, more maintainable, and more reusable code.

Code editors run from minimal, like Window's Notepad, to the fully-featured and
customizable, like `Atom <https://atom.io/>`_ , `Visual Studio Code
<https://code.visualstudio.com/>`_ , or `PyCharm <https://www.jetbrains.com/pycharm/>`_.
Features include syntax highlighting, the ability to execute code, debugging
tools, autocompletion, and project management.


Hello SciPy
===========

Need to test if the packages got installed? Type these lines at an IPython
prompt, or save in a ``*.py`` file to execute::

    import numpy as np
    print("I like ", np.pi)

For testing the SciPy library and Matplotlib, here's a fun Easter egg::

    from scipy import misc
    import matplotlib.pyplot as plt

    face = misc.face()
    plt.imshow(face)
    plt.show()


Start learning
==============

Each package has official tutorials:

- `NumPy User Guide <https://numpy.org/devdocs/user/tutorials_index.html>`_

- `SciPy Tutorial <http://docs.scipy.org/doc/scipy/reference/tutorial/index.html>`_

- `Matplotlib beginner's guide <http://matplotlib.org/users/beginner.html>`_

- `pandas tutorials <http://pandas.pydata.org/pandas-docs/stable/tutorials.html>`_

- `SymPy tutorial <http://docs.sympy.org/latest/tutorial/>`_

Additional outside tutorials exist, such as the
`Scipy Lecture Notes <http://scipy-lectures.org/index.html>`_ or
`Elegant SciPy <https://github.com/elegant-scipy/notebooks>`_ .

But the best way to learn is to start coding.


Stuck? Need help?
=================

Getting errors that you can't figure out?

Start by looking at the error message. Yes, error messages are often
intimidating and filled with technical detail. However, they can often help
pinpoint the exact location in code where things go wrong. This is often most
of the battle.

Unsure of how to use a particular function? In Jupyter and the IPython shell,
call up documentation with::

    import numpy as np
    np.linspace?

or for viewing the source::

    import numpy as np
    np.linspace??

``?`` works on both functions and variables::

    a = "SciPy is awesome ;)"
    a?

Try searching the Internet and sites like `StackOverflow <https://stackoverflow.com/>`_
to see if others have encountered similar problems or can help with yours.

If you think you have truly encountered a problem with SciPy itself, read the
page on `Reporting Bugs <https://scipy.org/bug-report.html>`_.
