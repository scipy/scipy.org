---
title: Guía de instalación para principiantes
sidebar: false
---

{{< admonition tip >}}
Esta es la guía de instalación para principiantes.
Si te acomoda usar una terminal y te interesa aprender
a utilizar un gestor de paquetes, échale un vistazo a
[la guía principal de instalación](./install.md).
{{< /admonition >}}

- [JupyterLite](#jupyterlite)
- [Distribuiciones de Python Científico](#distributions)
- [Instalar globalmente con `pip`](#pip-global)

<a name="jupyterlite"></a>

## JupyterLite

Para probar SciPy, ¡ni siquiera necesitas instalarlo!
Puedes usar SciPy en tu navegador en https://jupyter. rg/try-jupyter/lab/ --
simplemente abre un Notebook de Python, luego escribe `import scipy` en una de
las "celdas" del notebook y haz clic en ejecutar.

Para los siguientes pasos, mira [la guía de usuario de SciPy][scipy-user-guide].

[scipy-user-guide]: https://docs.scipy.org/doc/scipy/tutorial/

<a name="distributions"></a>

## Distribuciones de Python Científico

Las distribuciones de Python proporcionan el propio lenguaje de programación, junto con las herramientas y los paquetes más comúnmente utilizados. Estos archivos descargables requieren
poca configuración, funcionan en casi todas las configuraciones y proporcionan todas las herramientas científicas de Python
más usadas.
[Anaconda](https://www.anaconda.com/download/) funciona en Windows, Mac,
y Linux, y se adapta mejor a principiantes.
Otras opciones incluyen:

- [WinPython](https://winpython.github.io): Otra distribución gratuita que incluye paquetes científicos y el IDE Spyder; solo para Windows.
- [Pyzo](https://pyzo.org): Una distribución gratuita basada en Anaconda y el entorno de desarrollo interactivo IEP; Soporta Linux, Windows y Mac.

{{< admonition note >}}
Anaconda es de uso gratuito para individuos, universidades y compañías con menos de 200 empleados. Para más detalles, consulta en el blog de Anaconda acerca de ["¿cuándo se puede usar Anaconda de forma libre/gratuita?"](https://www.anaconda.com/blog/update-on-anacondas-terms-of-service-for-academia-and-research)
{{< /admonition >}}

Después de instalar una distribución científica de Python, revisa los siguientes pasos en [la guía de usuario de SciPy][scipy-user-guide].

<a name="pip-global"></a>

## Instalar globalmente con `pip`

Si ya tienes instalado Python, puedes instalar SciPy
con `pip` ejecutando lo siguiente en una terminal/shell:

```
python -m pip install scipy
```

{{< admonition warning >}}
Puedes ver este paso sugerido en tutoriales o clases, pero la forma recomendada
de instalar SciPy con `pip` es usar un entorno virtual -
revisa [Instalando con `pip`](./install.md#installing-with-pip).
{{< /admonition >}}

{{< admonition note >}}
Para más información sobre por qué este no es un método de instalación recomendado,
lee acerca de los [entornos virtuales en la Guía para la gestión de paquetes en Python](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments).
{{< /admonition >}}
