Bug Reports
===========
**Please help us by reporting any problems you find.**

We make use of Github to do project management.  There, you can see
what we are currently working on (Pull Requests), as well as file
bug-reports (issues).

1. Go to the relevant page:

   - `SciPy pull requests <https://github.com/scipy/scipy/pulls>`_

   - `SciPy bug reports <https://github.com/scipy/scipy/issues>`_

   - `NumPy pull requests <https://github.com/numpy/numpy/pulls>`_

   - `NumPy bug reports <https://github.com/numpy/numpy/issues>`_

#. On Github you need to register an account the first time you use it.

#. Make sure the bug hasn't already been reported.  Click on "Search"
   and type in some keywords to search for.

#. File your bug-report by clicking "New Issue" on Github.

#. Note that the bug trackers are mostly for actual bugs. If you want
   to propose an enhancement, then the mailing list is a better place
   to get feedback.

Guidelines for submitting bugs
------------------------------

* Provide a good description. Tickets in the vein of "SciPy is
  BROKEN!!!" are not useful; rather, please state the problem clearly,
  e.g. "scipy.ndimage ignores keyword 'axis'".

* Include a minimal stand-alone code snippet to illustrate the
  problem.  Try to narrow it down to a few lines.

* If you experience segfaults or memory errors, give a GDB traceback:

  ::

      $ gdb python
      GNU gdb 6.3.50-20050815 (Apple version gdb-573) (Fri Oct 20 15:50:43 GMT 2006)
      Copyright 2004 Free Software Foundation, Inc.
      GDB is free software, covered by the GNU General Public License, and you are
      welcome to change it and/or distribute copies of it under certain conditions.
      Type "show copying" to see the conditions.
      There is absolutely no warranty for GDB.  Type "show warranty" for details.
      This GDB was configured as "i386-apple-darwin"...Reading symbols for shared
      libraries .. done
      (gdb) run -c "import scipy; scipy.test(10,10)"
      Starting program: /usr/local/bin/python -c "import scipy; scipy.test()"
      Reading symbols for shared libraries . done
      Program received signal SIGTRAP, Trace/breakpoint trap.
      0x8fe01010 in __dyld__dyld_start ()
      (gdb) c
      Continuing.
      Reading symbols for shared libraries . done
      Reading symbols for shared libraries . done
      ...

  Then use the "bt" command after the segfault happens to get the backtrace. Alternatively, `run the code through Valgrind <http://wiki.scipy.org/Cookbook/C_Extensions#head-9d3c4f5894aa215af47ea7784a33ab0252d230d8>`_.

.. FIXME: the link for running code through Valgrind will change once we
    migrate from the wiki

* Set the milestone to the next release.

**Thank you for helping to make** NumPy and SciPy **better!**
