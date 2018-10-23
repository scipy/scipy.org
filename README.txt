This repository contains the Sphinx source for the SciPy website
(http://www.scipy.org/).

After cloning this repository, run

    $ git submodule init
    $ git submodule update

to get the Sphinx theme used.

The source is in the `www` directory, `cd` there, then the following
commands apply:

To make a local build of the website

    $ cd www
    $ make html

To build and upload the site (requires ssh access to www.scipy.org,
and if you're on macOS then upgrade rsync with Homebrew first):

    $ make upload USERNAME=myusername

To test external links from the site

    $ make linkcheck

