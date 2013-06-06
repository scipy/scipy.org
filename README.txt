This repository contains the Sphinx source for the SciPy website
(http://www.scipy.org/).

After cloning this repository, run

    $ git submodule init
    $ git submodule update

to get the Sphinx theme used.

The source is in the `www` directory, `cd` there, then the following
commands apply:

To make a local build of the website

    $ make html

To build and upload the site (requires ssh access to www.scipy.org).

    $ make upload

To test external links from the site

    $ make linkcheck

