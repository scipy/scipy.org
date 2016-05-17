======================================
Citing packages in the SciPy ecosystem
======================================

A number of articles related to scientific computing with Python have appeared;
a selection related to some of the core toolstack are listed below. See also
the `May 2007`__ and `March 2011`__ editions of the journal *Computing in
Science & Engineering* which focuses on scientific computing with Python.

__ http://scitation.aip.org/content/aip/journal/cise/9/3
__ http://scitation.aip.org/content/aip/journal/cise/13/2

SciPy (the library)
###################

.. raw:: html

   <script type="text/javascript">
     $(document).ready(function() {
         var date = new Date().toJSON().slice(0,10);
         $("#today-replace").html(function(i, html) {
             return html.replace(/&lt;today&gt;/g, date);
         });
     });
   </script>

   <div id='today-replace'>

* Jones E, Oliphant E, Peterson P, *et al.*
  **SciPy: Open Source Scientific Tools for Python**, 2001-,
  http://www.scipy.org/ [Online; accessed <today>].

Here's an example of a BibTeX entry:

::

   @Misc{,
     author =    {Eric Jones and Travis Oliphant and Pearu Peterson and others},
     title =     {{SciPy}: Open source scientific tools for {Python}},
     year =      {2001--},
     url = "http://www.scipy.org/",
     note = {[Online; accessed <today>]}
   }

For any specific algorithm, also consider citing the original author's paper
(this can often be found under the "References" section of the docstring).

.. raw:: html

   </div>

Scientific Computing in Python
##############################

* Travis E. Oliphant.
  **Python for Scientific Computing**,
  Computing in Science & Engineering, **9**, 10-20 (2007),
  `DOI:10.1109/MCSE.2007.58`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2007.58
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.58


* K. Jarrod Millman and Michael Aivazis. **Python for Scientists and Engineers**,
  Computing in Science & Engineering, **13**, 9-12 (2011),
  `DOI:10.1109/MCSE.2011.36`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2011.36
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2011.36

NumPy & SciPy
#############

* Stéfan van der Walt, S. Chris Colbert and Gaël Varoquaux.
  **The NumPy Array: A Structure for Efficient Numerical Computation**,
  Computing in Science & Engineering, **13**, 22-30 (2011),
  `DOI:10.1109/MCSE.2011.37`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2011.37
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2011.37

IPython
#######

* Fernando Pérez and Brian E. Granger.
  **IPython: A System for Interactive Scientific Computing**,
  Computing in Science & Engineering, **9**, 21-29 (2007),
  `DOI:10.1109/MCSE.2007.53`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2007.53
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.53

Matplotlib
##########

* John D. Hunter.
  **Matplotlib: A 2D Graphics Environment**,
  Computing in Science & Engineering, **9**, 90-95 (2007),
  `DOI:10.1109/MCSE.2007.55`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2007.55
__ http://scitation.aip.org/content/aip/journal/cise/9/3/10.1109/MCSE.2007.55

Cython
######
* Stefan Behnel, Robert Bradshaw, Craig Citro, Lisandro Dalcin, Dag Sverre
  Seljebotn and Kurt Smith.
  **Cython: The Best of Both Worlds**,
  Computing in Science and Engineering, **13**, 31-39 (2011),
  `DOI:10.1109/MCSE.2010.118`__ (`publisher link`__)

__ http://dx.doi.org/10.1109/MCSE.2010.118
__ http://scitation.aip.org/content/aip/journal/cise/13/2/10.1109/MCSE.2010.118

Pandas
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

__ http://dx.doi.org/10.7717/peerj.453

F2PY
####

* Pearu Peterson.
  **F2PY: a tool for connecting Fortran and Python programs**,
  International Journal of Computational Science and Engineering,
  **4** (4), 296-305 (2009),
  `DOI:10.1504/IJCSE.2009.029165`__ (`publisher link`__) (`preprint`__)

__ http://dx.doi.org/10.1504/IJCSE.2009.029165
__ http://www.inderscience.com/info/inarticletoc.php?jcode=ijcse&year=2009&vol=4&issue=4
__ http://cens.ioc.ee/~pearu/papers/IJCSE4.4_Paper_8.pdf
