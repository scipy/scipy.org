---
title: インストール
sidebar: false
---

{{< admonition tip >}}
このページでは、あなたがターミナルの使用に慣れており、パッケージマネージャーの使い方を学ぶことに抵抗がないことを前提としています。 {{< admonition tip >}}
このページでは、ターミナル操作に慣れていて、パッケージマネージャーの使い方を学ぶ意欲があることを前提としています。初心者でとにかく早く SciPy を始めたい方は、[初心者向けインストールガイド](./beginner-install.md)をチェックしてください！
{{< /admonition >}}
{{< /admonition >}}

SciPy の推奨インストール方法は、あなたのワークフローのスタイルによって異なります。
一般的なワークフローは以下のカテゴリに大別できます：
一般的なワークフローは大まかに下記のカテゴリに分類できます。

- **プロジェクトベース**（例：`uv`, `pixi`）_(新規ユーザーに推奨)_
- **環境ベース**（例：`pip`, `conda`）_(従来のワークフロー)_
- **システムパッケージマネージャー** _(非推奨)_
- **ソースからのビルド** _(デバッグや開発目的)_

\[スタブ付き型情報(static type stubs)]を使って SciPy をインストールするには、[型スタブ付きのインストール方法](#type-stubs)を参照してください。

[static type stubs]: [https://typing.readthedocs.io/en/latest/guides/libraries.html]\(https://typing.readthedocs.io/en/latest/guides/libraries.html\)

{{< admonition tip >}}
統合開発環境（IDE）で正確な型ヒントを得るためには、型スタブのインストールが必要な場合があります。
{{< /admonition >}}
{{< /admonition >}}

{{< tabs >}}

[[tab]]
name = 'プロジェクトベース'
content = ''' <a name="project-based"></a>

### uv によるインストール

ここでは Python パッケージマネージャーである uv を使って SciPy を使用するためのプロジェクトをセットアップする手順を説明します。

1. [uv のドキュメントのインストール手順](https://docs.astral.sh/uv/getting-started/installation/)に従って、\`uv\`をインストールします。

2. ターミナルで以下を実行して、新しいサブディレクトリに新しいプロジェクトを作成します。

```bash
uv init try-scipy
cd try-scipy
```

{{< admonition hint >}}
2つ目のコマンドでプロジェクトのディレクトリに移動しています。
{{< /admonition >}}

3. プロジェクトに SciPy を追加します：

```bash
uv add scipy
```

{{< admonition note >}}
これは、Pythonがまだインストールされていない場合に、自動的にPythonをインストールします！
{{< /admonition >}}

{{< admonition tip >}}
他のPythonライブラリも同じようにインストールできます。
例:

```bash
uv add matplotlib
```

{{< /admonition >}}

4. SciPy を試してみましょう！

```bash
uv run python
```

Python インタプリタが起動し、そこで `import scipy` が使えます。

<!-- prettier-ignore-end -->

[次のステップはこちら：SciPyユーザーガイド][scipy-user-guide]

[scipy-user-guide]: https://docs.conda.io/projects/conda/en/latest/index.html

パッケージ管理ツール[`pixi`]を使用して[conda-forge]からSciPyをインストールする手順は、`uv`を使った場合と非常に似ています。

再起動後は、`try-scipy` プロジェクトのディレクトリに移動して `uv run python` を実行することで、SciPy を使える Python インタプリタに入ることができます。
スクリプトを実行するには `uv run myscript.py` を使用してください。
あるPython スクリプトを実行するには、 `uv run myscript.py` コマンドを使用します。

詳細は [uv プロジェクトガイド][uv-projects] をご覧ください。

[uv-projects]: https://docs.astral.sh/uv/guides/projects/

{{< /admonition >}}

### `pixi` によるインストール

Python以外のパッケージも扱う場合、[Conda]パッケージとしてSciPyをインストールすることを好むかもしれません。[PyPI](https://pypi.org/)（Python Package Index）で利用できないパッケージにも同じワークフローを使用できるようにするためです。
Condaはあらゆる言語のパッケージを管理できるため、Python自体、コンパイラー、その他の言語をインストールするために使用できます。
Python 以外のパッケージも扱う場合は、[Conda] パッケージとして SciPy をインストールすると便利です。Conda は任意の言語のパッケージを管理でき、Python 本体やコンパイラ、他言語のインストールも可能です。

[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html

[conda-forge] 経由での [`pixi`] を使った SciPy インストール手順は `uv` とほぼ同じです：

[conda-forge]: https://conda-forge.org/
[`pixi`]: https://pixi.sh/latest/

1. [`pixi` のインストール手順][install-pixi] に従って `pixi` をインストールします。

[install-pixi]: https://pixi.sh/latest/

2. 新しいサブディレクトリにプロジェクトを作成します：

```bash
pixi init try-scipy
cd try-scipy
```

3. SciPy を追加します：

```bash
pixi add scipy
```

4. SciPy を試してみましょう！

```bash
pixi run python
```

'''

[[tab]]
name = '環境ベース'
content = ''' <a name="environment-based"></a>

プロジェクトベースのワークフローでは、マニフェストファイル、ロックファイル、複数の環境を含むプロジェクトディレクトリを作成します。

一方、環境ベースのワークフローでは、任意のディレクトリから有効化/無効化可能な「環境」にパッケージをインストールします。
この方法は確立されたものですが、プロジェクトベースのワークフローほど再現性が高くありません。
この環境ベースのワークフローは十分に方法論として確立されていますが、
プロジェクトベースのワークフローのような再現性という利点はありません。

### `pip` を使ったインストール

<!-- prettier-ignore-start -->

1. [Python をインストール](https://www.python.org/downloads/)します。

2. `venv` を使って仮想環境を作成・有効化します。

{{< admonition hint >}}
詳しくは [Python Packaging User Guide のチュートリアル](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments)を参照してください。
{{< /admonition >}}
{{< /admonition >}}

3. [`pip`] を使って SciPy をインストールします：

```bash
python -m pip install scipy
```

<!-- prettier-ignore-end -->

[`pip`]: https://pip.pypa.io/en/stable/getting-started/

### `conda` を使ったインストール

[Miniforge] は、`conda` および [`mamba`]（高速代替版）をインストールする推奨手段です。
環境を作成後、conda-forge から以下のように SciPy をインストールします：
環境を作成したら、conda-forgeから下記の方法でSciPyをインストールできます。

```bash
conda install scipy # または
mamba install scipy
```

[Miniforge]: https://conda-forge.org/download/
[`mamba`]: https://mamba.readthedocs.io/en/latest/

'''

[[tab]]
name = 'パッケージマネージャー'
content = ''' <a name="system-package-managers"></a>

## システムパッケージマネージャーを使った全体インストール

システムパッケージマネージャーでも主要な Python パッケージのインストールが可能です。
ただし、全体に対するインストールであり、バージョンが古いことが多く、種類も限られています。そのため推奨される方法ではありません。
この方法を使うと、コンピュータ全体にパッケージがインストールされます。しかし、システムのパッケージマネージャーは、しばしば古いバージョンである
パッケージをインストールし、利用可能なバージョンは他の方法に比べると、あまり多くはありません。 これらの方法は、推奨されるインストール方法ではありません。

### Ubuntu および Debian

`apt-get` を使う場合：

```bash
sudo apt-get install python3-scipy
```

### Fedora

`dnf` を使う場合：

```bash
sudo dnf install python3-scipy
```

### macOS

macOS にはデフォルトでパッケージマネージャーがありませんが、[Homebrew](https://brew.sh/) をインストールすることで、SciPy（と Python 本体）をインストールできます：

```bash
brew install scipy
```

'''

[[tab]]
name = 'ソースからのビルド'
content = ''' <a name="building-from-source"></a>

注意点: ソースコードからSciPyをビルドするのは簡単ではない場合があります。 お使いのプラットフォームで、上記の方法のいずれかを通じてバイナリソフトが利用可能な場合は、それを使用することをおすすめします。
ソースからビルドする方法の詳細については、
[SciPy ドキュメントのソースからのビルド ガイド][building-docs]。

[building-docs]: https://scipy.github.io/devdocs/building/index.html

'''

{{</ tabs >}}

[次のステップは SciPy ユーザーガイド](https://docs.scipy.org/doc/scipy/tutorial/)を参照してください。

<a name="type-stubs"></a>

## 型スタブ付きインストール

静的型スタブは、PyPI および conda-forge 上の別のパッケージ `scipy-stubs` を介して利用可能です。
PyPI の `scipy-stubs[scipy]` extra または conda-forge の `scipy-typed` パッケージを介して、SciPy と `scipy-stubs` を単一のパッケージとしてインストールすることもできます。
SciPy の特定のバージョン `x.y.z` (例: `1.14.1`) を取得するには、バージョン `x.y.z.*` をインストールする必要があります。例:
型スタブは PyPI や conda-forge 上の別パッケージ `scipy-stubs` として提供されています。
SciPy と `scipy-stubs` をまとめてインストールするには、PyPI の `scipy-stubs[scipy]` オプションや、conda-forge の `scipy-typed` パッケージを使うこともできます。
SciPy の特定バージョン `x.y.z`（例：`1.14.1`）を取得したい場合は `x.y.z.*` を指定します。例えば：

```bash
uv add "scipy-stubs[scipy]==1.14.1.*" # または
pixi add "scipy-typed=1.15.0.*" # または
python -m pip install "scipy-stubs[scipy]" # または
conda install "scipy-typed>=1.14"
```

型情報のサポートに関する質問は [scipy-stubs の GitHub リポジトリ](https://github.com/jorenham/scipy-stubs) までお寄せください。
