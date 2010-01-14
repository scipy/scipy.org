Bug Reports
===========
**Please help us by reporting any problems you find.**

We make use of `Trac <http://trac.edgewall.org/>`_ to do project management.  There, you can see what we are currently working on, as well as file bug-reports (known as *tickets*).

1. Go to the relevant Trac page:

   - `SciPy Developer Page <http://projects.scipy.org/scipy>`_

   - `NumPy Developer Page <http://projects.scipy.org/numpy>`_

#. Register your username (we require logins to prevent spam), by clicking on "register". You only need to do this once (i.e, SciPy and NumPy Developer Pages use the same login/password).

#. Make sure the bug hasn't already been reported.  Click on "Search".  Then, type in some keywords, select "Tickets" and click "Search".

#. File your bug-report by clicking "New Ticket" (**this link is only available once you've logged in**).

Guidelines for submitting bugs
------------------------------

* Provide a good description.  We tend to ignore tickets named "SciPy is BROKEN!!!", and focus on ones that state the problem clearly, e.g. "scipy.ndimage ignores keyword 'axis'".

* Include a code snippet to illustrate the problem.  Try to narrow it down to a few lines.

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

  Then use the "bt" command after the segfault happens to get the backtrace. Alternatively, `run the code through Valgrind <http://www.scipy.org/Cookbook/C_Extensions#head-9d3c4f5894aa215af47ea7784a33ab0252d230d8>`_.

.. FIXME: the link for running code through Valgrind will change once we
    migrate from the wiki

* Set the milestone to the next release.

**Thank you for helping to make** SciPy **better!**

.. ############################################################################

.. _SciPy: ../SciPy

.. _NumPy: ../NumPy

