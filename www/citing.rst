======================================
Citing packages in the SciPy ecosystem
======================================

A number of articles related to scientific computing with Python have appeared;
a selection related to some of the core toolstack are listed below. See also
the `May 2007`__ and `March 2011`__ editions of the journal *Computing in
Science & Engineering*, which focuses on scientific computing with Python.

__ http://scitation.aip.org/content/aip/journal/cise/9/3
__ http://scitation.aip.org/content/aip/journal/cise/13/2

SciPy (the library)
###################

There is now a journal article available for citing usage of SciPy:

Pauli Virtanen, Ralf Gommers, Travis E. Oliphant, Matt Haberland,
Tyler Reddy, David Cournapeau, Evgeni Burovski, Pearu Peterson,
Warren Weckesser, Jonathan Bright, Stéfan J. van der Walt,
Matthew Brett, Joshua Wilson, K. Jarrod Millman, Nikolay Mayorov,
Andrew R. J. Nelson, Eric Jones, Robert Kern, Eric Larson, CJ Carey,
İlhan Polat, Yu Feng, Eric W. Moore, Jake VanderPlas, Denis Laxalde,
Josef Perktold, Robert Cimrman, Ian Henriksen, E.A. Quintero, Charles R Harris,
Anne M. Archibald, Antônio H. Ribeiro, Fabian Pedregosa, Paul van Mulbregt,
and SciPy 1.0 Contributors. (2020) **SciPy 1.0: Fundamental Algorithms
for Scientific Computing in Python**. *Nature Methods*, 17(3), 261-272.

Here's an example of a BibTeX entry:

::

    @ARTICLE{2020SciPy-NMeth,
      author  = {Virtanen, Pauli and Gommers, Ralf and Oliphant, Travis E. and
                Haberland, Matt and Reddy, Tyler and Cournapeau, David and
                Burovski, Evgeni and Peterson, Pearu and Weckesser, Warren and
                Bright, Jonathan and {van der Walt}, St{\'e}fan J. and
                Brett, Matthew and Wilson, Joshua and Millman, K. Jarrod and
                Mayorov, Nikolay and Nelson, Andrew R. J. and Jones, Eric and
                Kern, Robert and Larson, Eric and Carey, C J and
                Polat, {\.I}lhan and Feng, Yu and Moore, Eric W. and
                {VanderPlas}, Jake and Laxalde, Denis and Perktold, Josef and
                Cimrman, Robert and Henriksen, Ian and Quintero, E. A. and
                Harris, Charles R. and Archibald, Anne M. and
                Ribeiro, Ant{\^o}nio H. and Pedregosa, Fabian and
                {van Mulbregt}, Paul and {SciPy 1.0 Contributors}},
      title   = {{{SciPy} 1.0: Fundamental Algorithms for Scientific
                Computing in Python}},
      journal = {Nature Methods},
      year    = {2020},
      volume  = {17},
      pages   = {261--272},
      adsurl  = {https://rdcu.be/b08Wh},
      doi     = {10.1038/s41592-019-0686-2},
    }

This supersedes the preprint in arXiv:1907.10121_

.. _arXiv:1907.10121: https://arxiv.org/abs/1907.10121

For any specific algorithm, also consider citing the original author's paper
(this can often be found under the "References" section of the docstring).


Scientific computing in Python
##############################

* Travis E. Oliphant.
  **Python for Scientific Computing**,
  Computing in Science & Engineering, **9**, 10-20 (2007),
  `DOI:10.1109/MCSE.2007.58`__ (`publisher link`__)

__ https://doi.org/10.1109/MCSE.2007.58
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.58


* K. Jarrod Millman and Michael Aivazis. **Python for Scientists and Engineers**,
  Computing in Science & Engineering, **13**, 9-12 (2011),
  `DOI:10.1109/MCSE.2011.36`__ (`publisher link`__)

__ https://doi.org/10.1109/MCSE.2011.36
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2011.36


NumPy
#####

* Travis E. Oliphant.
  **A guide to NumPy**,
  USA: Trelgol Publishing, (2006).

* Stéfan van der Walt, S. Chris Colbert and Gaël Varoquaux.
  **The NumPy Array: A Structure for Efficient Numerical Computation**,
  Computing in Science & Engineering, **13**, 22-30 (2011),
  `DOI:10.1109/MCSE.2011.37`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2011.37
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2011.37

* Charles R. Harris, K. Jarrod Millman, Stéfan J. van der Walt, Ralf
  Gommers, Pauli Virtanen, David Cournapeau, Eric Wieser, Julian Taylor,
  Sebastian Berg, Nathaniel J. Smith, Robert Kern, Matti Picus, Stephan
  Hoyer, Marten H. van Kerkwijk, Matthew Brett, Allan Haldane, Jaime
  Fernández del Río, Mark Wiebe, Pearu Peterson, Pierre Gérard-Marchant,
  Kevin Sheppard, Tyler Reddy, Warren Weckesser, Hameer Abbasi,
  Christoph Gohlke & Travis E. Oliphant. 
  **Array programming with NumPy**, Nature, **585**, 357–362 (2020),
  `DOI:10.1038/s41586-020-2649-2`__ (`publisher link`__)

  __ https://doi.org/10.1038/s41586-020-2649-2
  __ https://www.nature.com/articles/s41586-020-2649-2

  ::

      @ARTICLE{2020NumPy-Array,
        author  = {Harris, Charles R. and Millman, K. Jarrod and 
                  van der Walt, Stéfan J and Gommers, Ralf and 
                  Virtanen, Pauli and Cournapeau, David and 
                  Wieser, Eric and Taylor, Julian and Berg, Sebastian and
                  Smith, Nathaniel J. and Kern, Robert and Picus, Matti and 
                  Hoyer, Stephan and van Kerkwijk, Marten H. and
                  Brett, Matthew and Haldane, Allan and 
                  Fernández del Río, Jaime and Wiebe, Mark and 
                  Peterson, Pearu and Gérard-Marchant, Pierre and 
                  Sheppard, Kevin and Reddy, Tyler and Weckesser, Warren and 
                  Abbasi, Hameer and Gohlke, Christoph and 
                  Oliphant, Travis E.},
        title   = {Array programming with NumPy},
        journal = {Nature},
        year    = {2020},
        volume  = {585},
        pages   = {357–362},
        doi     = {10.1038/s41586-020-2649-2}
      }


IPython
#######

* Fernando Pérez and Brian E. Granger.
  **IPython: A System for Interactive Scientific Computing**,
  Computing in Science & Engineering, **9**, 21-29 (2007),
  `DOI:10.1109/MCSE.2007.53`__ (`publisher link`__)

__ https://doi.org/10.1109/MCSE.2007.53
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.53

Matplotlib
##########

* John D. Hunter.
  **Matplotlib: A 2D Graphics Environment**,
  Computing in Science & Engineering, **9**, 90-95 (2007),
  `DOI:10.1109/MCSE.2007.55`__ (`publisher link`__)

__ https://doi.org/10.1109/MCSE.2007.55
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.55

Cython
######
* Stefan Behnel, Robert Bradshaw, Craig Citro, Lisandro Dalcin, Dag Sverre
  Seljebotn and Kurt Smith.
  **Cython: The Best of Both Worlds**,
  Computing in Science and Engineering, **13**, 31-39 (2011),
  `DOI:10.1109/MCSE.2010.118`__ (`publisher link`__)

__ https://doi.org/10.1109/MCSE.2010.118
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2010.118

pandas
######
* Wes McKinney.
  **Data Structures for Statistical Computing in Python**,
  Proceedings of the 9th Python in Science Conference, 51-56 (2010)
  (`publisher link`__)

__ http://conference.scipy.org/proceedings/scipy2010/mckinney.html

scikit-learn
############

* Fabian Pedregosa, Gaël Varoquaux, Alexandre Gramfort, Vincent Michel,
  Bertrand Thirion, Olivier Grisel, Mathieu Blondel, Peter Prettenhofer, Ron
  Weiss, Vincent Dubourg, Jake Vanderplas, Alexandre Passos, David Cournapeau,
  Matthieu Brucher, Matthieu Perrot, Édouard Duchesnay.
  **Scikit-learn: Machine Learning in Python**,
  Journal of Machine Learning Research, **12**, 2825-2830 (2011)
  (`publisher link`__)

__ http://jmlr.org/papers/v12/pedregosa11a.html

scikit-image
############

* Stéfan van der Walt, Johannes L. Schönberger, Juan Nunez-Iglesias, François
  Boulogne, Joshua D. Warner, Neil Yager, Emmanuelle Gouillart, Tony Yu and the
  scikit-image contributors.
  **scikit-image: Image processing in Python**,
  PeerJ 2:e453 (2014)
  (`publisher link`__)

__ https://doi.org/10.7717/peerj.453

F2PY
####

* Pearu Peterson.
  **F2PY: a tool for connecting Fortran and Python programs**,
  International Journal of Computational Science and Engineering,
  **4** (4), 296-305 (2009),
  `DOI:10.1504/IJCSE.2009.029165`__ (`publisher link`__) (`preprint`__)

__ https://doi.org/10.1504/IJCSE.2009.029165
__ http://www.inderscience.com/info/inarticletoc.php?jcode=ijcse&year=2009&vol=4&issue=4
__ http://cens.ioc.ee/~pearu/papers/IJCSE4.4_Paper_8.pdf

SymPy
#####

* Meurer A, Smith CP, Paprocki M, Čertík O, Kirpichev SB, Rocklin M, Kumar A,
  Ivanov S, Moore JK, Singh S, Rathnayake T, Vig S, Granger BE, Muller RP,
  Bonazzi F, Gupta H, Vats S, Johansson F, Pedregosa F, Curry MJ, Terrel AR,
  Roučka Š, Saboo A, Fernando I, Kulal S, Cimrman R, Scopatz A.
  **SymPy: symbolic computing in Python**,
  PeerJ Computer Science 3:e103 (2017)
  (`publisher link`__)

__ https://doi.org/10.7717/peerj-cs.103
