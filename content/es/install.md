---
title: Instalación
sidebar: false
---

{{< admonition tip >}}
Esta página asume que te acomoda usar una terminal y quieres de aprender
cómo usar un gestor de paquetes. Si eres principiante y solo quieres empezar
con SciPy tan pronto como sea posible, revisa [la guía de instalación para principiantes](./beginner-install.md).
{{< /admonition >}}

El método recomendado para instalar SciPy depende de tu flujo de trabajo preferido.
Los flujos de trabajo más comunes se pueden dividir aproximadamente en las siguientes categorías:

- **Basado en proyectos** (por ejemplo, `uv`, `pixi`) _(recomendado para nuevos usuarios)_
- **Basado en entornos** (por ejemplo, `pip`, `conda`) _(el flujo de trabajo tradicional)_
- **Gestores de paquetes del sistema** _(no recomendado)_
- **Compilación desde el código fuente** _(para depuración y desarrollo)_

Para instalar SciPy con \[archivos de tipado estáticos], revisa [Instalación con archivos de tipado](#type-stubs).

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

Es posible que se requiera instalar archivos de anotaciones de tipos para que los Entornos de Desarrollo Interactivos (IDEs) ofrezcan sugerencias de tipos más precisas.
{{< /admonition >}}

{{< tabs >}}

[[tab]]
name = 'Basado en proyectos'
content = ''' <a name="project-based"></a>

### Instalación con uv

Aquí hay una guía paso a paso para configurar un proyecto para usar SciPy con [`uv`], un administrador de paquetes de Python.

1. Instala `uv` siguiendo [las instrucciones en la documentación de uv](https://docs.astral.sh/uv/getting-started/installation/).

2. Crea un nuevo proyecto en un nuevo subdirectorio, ejecutando el siguiente comando en una terminal:

```bash
uv init try-scipy
cd try-scipy
```

{{< admonition hint >}}
El segundo comando cambia el directorio al directorio de tu proyecto.
{{< /admonition >}}

3. Añade SciPy a tu proyecto:

```bash
uv add scipy
```

{{< admonition note >}}
¡Esto instalará Python automáticamente si aún no lo tienes instalado!
{{< /admonition >}}

{{< admonition tip >}}
Puedes instalar otras librerías de Python de la misma manera, por ejemplo

```bash
uv add matplotlib
```

{{< /admonition >}}

4. ¡Prueba SciPy!

```bash
uv run python
```

Esto iniciará una sesión del intérprete de Python, desde la cual podrás ejecutar `import scipy`.

<!-- prettier-ignore-end -->

Consulta los siguientes pasos en [la guía de usuario de SciPy][scipy-user-guide].

[scipy-user-guide]: https://docs.conda.io/projects/conda/en/latest/index.html

{{< admonition note >}}

Después de reiniciar tu computadora, vas a querer navegar al directorio de tu proyecto `try-scipy` y ejecutar `uv run python` para volver a un intérprete de Python con SciPy disponible para su uso.
Para ejecutar un script de Python, puedes usar `uv run myscript.py`.

Lee más en \[la guía de `uv` para trabajar en proyectos]\[uv-proyects].

[uv-projects]: https://docs.astral.sh/uv/guides/projects/

{{< /admonition >}}

### Instalación con `pixi`

Si trabajas con paquetes que no son de Python, es posible que prefieras instalar SciPy como un paquete de [Conda], de modo que puedas usar el mismo flujo de trabajo para paquetes que no están disponibles en [PyPI](https://pypi.org/), el índice de paquetes de Python.
Conda puede administrar paquetes en cualquier lenguaje, por lo que puedes usarlo para instalar Python, compiladores y otros lenguajes.

[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html

Los pasos para instalar SciPy desde [conda-forge] usando la herramienta de gestión de paquetes [`pixi`] son ​​muy similares a los pasos para `uv`:

[conda-forge]: https://conda-forge.org/
[`pixi`]: https://pixi.sh/latest/

1. Instala `pixi`, siguiendo [las instrucciones en la documentación de `pixi`][install-pixi].

[install-pixi]: https://pixi.sh/latest/

2. Crea un nuevo proyecto en un nuevo subdirectorio:

```bash
pixi init try-scipy
cd try-scipy
```

3. Añade SciPy a tu proyecto:

```bash
pixi add scipy
```

4. ¡Prueba SciPy!

```bash
pixi run python
```

'''

[[tab]]
name = 'Basado en entornos'
content = ''' <a name="environment-based"></a>

En los flujos de trabajo basados ​​en proyectos, un proyecto es un directorio que contiene un archivo que describe el proyecto, un archivo que describe las dependencias exactas del proyecto y los entornos (potencialmente múltiples) del mismo.

Por el contrario, en los flujos de trabajo basados ​​en entornos, instalas paquetes en un entorno, que puedes activar y desactivar desde cualquier directorio.
Estos flujos de trabajo están bien establecidos, pero carecen de algunos beneficios de reproducibilidad de los flujos de trabajo basados ​​en proyectos.

### Instalación con `pip`

<!-- prettier-ignore-start -->

1. [Instala Python](https://www.python.org/downloads/).

2. Crea y activa un entorno virtual con `venv`.

{{< admonition hint >}}
Consulta [el tutorial en la Guía de usuario de empaquetado de Python](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments).
{{< /admonition >}}

3. Instala SciPy utilizando [`pip`]:

```bash
python -m pip install scipy
```

<!-- prettier-ignore-end -->

[`pip`]: https://pip.pypa.io/es/stable/getting-started/

### Instalación con `conda`

[Miniforge] es la forma recomendada de instalar `conda` y [`mamba`], dos administradores de entorno basados ​​en Conda.
Después de crear un entorno, puedes instalar SciPy desde conda-forge de la siguiente manera:

```bash
conda install scipy # or
mamba install scipy
```

[Miniforge]: https://conda-forge.org/download/
[`mamba`]: https://mamba.readthedocs.io/es/latest/

'''

[[tab]]
name = 'Administrador de paquetes'
content = ''' <a name="system-package-managers"></a>

## Instalación mediante un gestor de paquetes

Los gestores de paquetes del sistema pueden instalar los paquetes de Python más comunes.
Instalan paquetes para toda la computadora, a menudo usan versiones anteriores y no tienen tantas versiones disponibles. No son el método de instalación recomendado.

### Ubuntu y Debian

Usando `apt-get`:

```bash
sudo apt-get install python3-scipy
```

### Fedora

Usando `dnf`:

```bash
sudo dnf install python3-scipy
```

### macOS

macOS no tiene un administrador de paquetes preinstalado, pero puedes instalar [Homebrew](https://brew.sh/) y usarlo para instalar SciPy (y el propio Python):

```bash
brew install scipy
```

'''

[[tab]]
name = 'Construir desde el código fuente'
content = ''' <a name="building-from-source"></a>

Una advertencia: compilar SciPy desde el código fuente puede ser un ejercicio no trivial. Recomendamos utilizar binarios si es que están disponibles para tu plataforma, a través de uno de los métodos anteriores.
Para obtener detalles sobre cómo compilar desde el código fuente, consulta [la guía de compilación desde el código fuente en la documentación de SciPy][building-docs].

[building-docs]: https://scipy.github.io/devdocs/building/index.html

'''

{{</ tabs >}}

Revisa los siguientes pasos en la [Guía de usuario de SciPy](https://docs.scipy.org/doc/scipy/tutorial/).

<0></0>

## Instalación con archivos de tipado

Los archivos de tipado están disponibles a través de un paquete separado, "scipy-stubs", en PyPI y conda-forge.
También puedes instalar SciPy y `scipy-stubs` como un solo paquete, a través del paquete adicional `scipy-stubs[scipy]` en PyPI, o el paquete `scipy-typed` en conda-forge.
Para obtener una versión específica `x.y.z` de SciPy (como `1.14.1`), debes instalar la versión `x.y.z.*`, por ejemplo:

```bash
uv add "scipy-stubs[scipy]==1.14.1.*" # or
pixi add "scipy-typed=1.15.0.*" # or
python -m pip install "scipy-stubs[scipy]" # or
conda install "scipy-typed>=1.14"
```

Dirige tus preguntas sobre la compatibilidad y soporte de tipado al [repositorio GitHub `scipy-stubs`] (https://github.com/jorenham/scipy-stubs).
