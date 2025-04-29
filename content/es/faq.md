---
title: Preguntas frecuentes
sidebar: false
---

## ¿Qué es SciPy?

SciPy es un conjunto de herramientas científicas y numéricas de código abierto (bajo licencia BSD) para Python. Actualmente soporta funciones especiales, integración, solucionadores de ecuaciones diferenciales ordinarias (ODE), optimización de gradiente, herramientas de programación en paralelo, un compilador expresión-a-C++ para ejecución rápida, entre otros. Como regla general, si está cubierto en un manual general sobre computación numérica (por ejemplo, la conocida serie Numerical Recipes), probablemente está implementado en SciPy.

## ¿Cuánto cuesta?

SciPy está disponible de forma gratuita. Se distribuye como software de código abierto, lo que significa que se tiene acceso completo al código fuente y puede ser usado de cualquier forma permitida por su licencia liberal BSD.

## ¿Cuáles son los términos de licencia de SciPy?

La licencia de SciPy es gratuita tanto para su uso comercial como no comercial, conforme a los términos de la [licencia BSD](https://github.com/scipy/scipy/blob/main/LICENSE.txt).

## ¿Cómo puede SciPy ser rápido si está escrito en un lenguaje interpretado como Python?

En realidad, los bucles de tiempo crítico generalmente se implementan en C, C++, o Fortran. Partes de SciPy son capas delgadas de código encima de rutinas científicas que están disponibles libremente en <https://www.netlib.org/>. Netlib es un enorme repositorio de algoritmos científicos increíblemente valiosos y robustos escritos en C y Fortran. Sería absurdo reescribir estos algoritmos y tomaría años depurarlos. SciPy utiliza una variedad de métodos para generar \"wrappers\" alrededor de estos algoritmos para que puedan ser usados en Python. Algunos \"wrappers\" fueron generados al codificarlos a mano en C. El resto fueron generados usando ya sea SWIG o [f2py](https://www.f2py.com). Algunas de las nuevas contribuciones a SciPy están escritas enteramente o envueltas en [Cython](https://cython.org/) o [Pythran](https://pythran.readthedocs.io).

Una segunda respuesta es que para problemas difíciles un mejor algoritmo puede marcar una tremenda diferencia en el tiempo que tarda en resolver un problema.
Por lo tanto, el uso de los algoritmos incorporados de SciPy puede ser mucho más rápido que un simple algoritmo codificado en C.

## He encontrado un fallo. ¿Qué hago?

El equipo de desarrollo de SciPy trabaja duro para hacer a SciPy tan confiable como sea posible, pero, como en cualquier producto de software, los fallos ocurren. Si encuentras fallos que afecten al software por favor háznoslo saber creando un ticket en el [seguimiento de fallos de SciPy](https://github.com/scipy/scipy/issues).

## ¿Cómo puedo involucrarme en SciPy?

Visita la [página de la comunidad](/community).
Estamos interesados en que más personas ayuden a escribir código,
pruebas, documentación y ayuda en el sitio web.

## ¿Hay soporte comercial disponible?

Sí, una serie de empresas ofrecen apoyo comercial para SciPy, por ejemplo [Anaconda](https://www.anaconda.com), [Enthought](https://www.enthought.com) y [Quansight](https://www.quansight.com).

# NumPy vs. SciPy vs. otros paquetes

## ¿Cuál es la diferencia entre NumPy y SciPy?

En un mundo ideal, NumPy no contendría más que el tipo de datos arreglo (array) y las operaciones más básicas: indexar, ordenar, remodelar, funciones básicas
elementales, etc. Todo el código numérico residiría en SciPy.
Sin embargo, uno de los objetivos importantes de NumPy es la compatibilidad, por lo que NumPy intenta retener todas las características soportadas por cualquiera de sus predecesores.
Por esa razón, NumPy contiene algunas funciones de álgebra lineal y transformadas de Fourier, aunque estas pertenecen más correctamente a SciPy. En cualquier caso, SciPy contiene versiones más completas de los módulos de álgebra lineal, así como muchos otros algoritmos numéricos. Si estás haciendo computación científica con Python, probablemente deberías instalar tanto NumPy como SciPy. La mayoría de las nuevas características pertenecen a SciPy en lugar de NumPy.

## ¿Cómo hago gráficos usando SciPy?

El soporte para gráficos está más allá del alcance de SciPy, el que
se centra en objetos numéricos y algoritmos. Existen varios paquetes que se integran estrechamente con SciPy para producir gráficos de alta calidad, como el inmensamente popular [Matplotlib](https://matplotlib.org). Otros paquetes populares son [Bokeh](https://bokeh.pydata.org/en/latest),
[Plotly](https://plot.ly) y [Altair](https://altair-viz.github.io).

## ¿Cómo puedo hacer gráficos/visualizaciones 3D usando SciPy?

Al igual que las visualizaciones en 2D, los gráficos 3D están más allá del alcance de SciPy, pero como en el caso 2D, existen paquetes que se integran con SciPy.
[Matplotlib](https://matplotlib.org) proporciona gráficos 3D básicos en el subpaquete `mplot3d`. mientras que [Mayavi](https://docs.enthought.com/mayavi/mayavi/) proporciona una amplia gama de características de visualización 3D de alta calidad, utilizando el potente motor [VTK](https://www.vtk.org/).

## ¿Por qué `numpy.linalg` y `scipy.linalg`? ¿Cuál es la diferencia?

`scipy.linalg` es un \"wrapper\" más completo de Fortran [LAPACK](https://www.netlib.org/lapack/) usando [f2py](https://www.f2py.com).

Uno de los objetivos de diseño de NumPy era hacerlo construible sin usar un compilador Fortran, así que si no tienes LAPACK disponible, NumPy utilizará su propia implementación. SciPy requiere de un compilador Fortran para ser construido y depende en gran medida de código Fortran \"envuelto\".

Los módulos `linalg` en NumPy y SciPy tienen algunas funciones comunes pero con diferente documentación, y `scipy.linalg` contiene funciones que no se encuentran en `numpy.linalg`, tales como funciones relacionadas con la [descomposición LU](https://es.wikipedia.org/wiki/Factorizaci%C3%B3n_LU) y la [descomposición de Schur](https://es.wikipedia.org/wiki/Factorizaci%C3%B3n_de_Schur), múltiples maneras de calcular la pseudoinversa y matrices transcendentes, como el [logaritmo de una matriz](https://es.wikipedia.org/wiki/Logaritmo_de_una_matriz). Algunas funciones que existen en ambos tienen una funcionalidad aumentada `scipy.linalg`; por ejemplo, `scipy.linalg.eig` puede tomar una segunda matriz como argumento para resolver [problemas de eigenvalor generalizado](https://en.wikipedia.org/wiki/Generalized_eigenvalue_problem).

# Soporte de versiones de Python

## ¿Siguen NumPy y SciPy soportando Python 2.7?

La última versión de NumPy que soporta Python 2.7 es NumPy 1.16.x. La última versión de SciPy en hacerlo es SciPy 1.2.x. La primera versión de NumPy para soportar Python 3.x fue NumPy 1.5.0. El soporte para Python 3 en SciPy fue introducido en SciPy 0.9.0.

## ¿Funciona SciPy con PyPy?

En general, sí. Mejoras recientes en [PyPy](https://pypy.org) han hecho que la pila científica de Python funcione con PyPy. Dado que gran parte de SciPy está implementado como módulos de extensión en C, el código puede no correr más rápido (en la mayoría de los casos es significativamente más lento, sin embargo, PyPy está trabajando activamente para mejorar esto). Como siempre en el benchmarking, tu experiencia es la mejor guía.

## ¿Funciona SciPy con Jython o C\#/.NET?

No, ninguno de los dos es soportado. Jython nunca funcionó, porque se ejecuta sobre la Máquina Virtual de Java y no tiene forma de interactuar con las extensiones escritas en C para el intérprete estándar de Python (CPython).

Hace algunos años, hubo un esfuerzo para hacer que NumPy y SciPy fueran compatibles con .NET. Algunos usuarios en ese momento reportaron éxito al usar NumPy con [Ironclad](https://code.google.com/archive/p/ironclad) en Windows de 32-bits. Por último, [Pyjion](https://www.trypyjion.com) es un nuevo proyecto el cual se ha reportado, podría funcionar con SciPy.

En cualquier caso, estos compiladores/intérpretes están fuera del alcance de SciPy y no son soportados oficialmente por el equipo de desarrollo.

# Dónde obtener ayuda

Visite la [página de la comunidad](/community).
