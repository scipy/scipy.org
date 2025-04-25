---
title: インストール
sidebar: false
---

{{< admonition tip >}}
このページでは、あなたがターミナルの使用に慣れており、パッケージマネージャーの使い方を学ぶことに抵抗がないことを前提としています。 もしあなたが初心者で、できるだけ早くSciPyを始めたい場合は、[初心者向けインストールガイド](./beginner-install.md)をチェックしてみて下さい！
{{< /admonition >}}

SciPyの推奨されるインストール方法は、あなたの好みのワークフローによって異なります。
一般的なワークフローは、大きく以下のカテゴリに分類できます。
一般的なワークフローは大まかに下記のカテゴリに分類できます。

- **プロジェクトベース** (例: `uv`, `pixi`) _(新規ユーザーに推奨)_
- **環境ベース** (例: `pip`, `conda`) _(従来のワークフロー)_
- **システムパッケージマネージャー** _(推奨されません)_
- **ソースからのビルド** _(デバッグと開発用)_

\[静的型スタブ]を使用してSciPyをインストールするには、
[型スタブを使用したインストール](#type-stubs)をご覧ください。

[static type stubs]: [https://typing.readthedocs.io/en/latest/guides/libraries.html]\(https://typing.readthedocs.io/en/latest/guides/libraries.html\)

{{< admonition tip >}}
統合開発環境 (IDE) が正確な型ヒントを提供するためには、型スタブのインストールが必要となる場合があります。
{{< /admonition >}}
{{< /admonition >}}

{{< tabs >}}

[[tab]]
name = 'プロジェクトベース'
content = ''' <a name="project-based"></a>

### uv を使用したインストール

Pythonパッケージマネージャーであるuvを使用してSciPyを使用するためのプロジェクトをセットアップする手順は以下の通りです。

1. [uvドキュメントのインストール手順](\[https://docs.astral.sh/uv/getting-started/installation/)に従って](https://www.google.com/search?q=https://docs.astral.sh/uv/getting-started/installation/)%E3%81%AB%E5%BE%93%E3%81%A3%E3%81%A6)、\`uv\`をインストールします。

2. 新しいサブディレクトリに新しいプロジェクトを作成します。ターミナルで以下を実行します。

```bash
uv init try-scipy
cd try-scipy
```

{{< admonition hint >}}
2番目のコマンドは、ディレクトリをプロジェクトのディレクトリに変更します。
{{< /admonition >}}
{{< /admonition >}}

3. SciPyをプロジェクトに追加します。

```bash
uv add scipy
```

{{< admonition note >}}
これは、Pythonがまだインストールされていない場合に、自動的にPythonをインストールします！
{{< /admonition >}}
{{< /admonition >}}

{{< admonition tip >}}
同じ方法で他のPythonライブラリもインストールできます。例:

```bash
uv add matplotlib
```

{{< /admonition >}}

4. SciPyを試してみましょう！

```bash
uv run python
```

これによりPythonインタプリタセッションが起動し、そこから `import scipy` を実行できます。

<!-- prettier-ignore-end -->

次のステップは[SciPyユーザーガイド][scipy-user-guide]をご覧ください。

[scipy-user-guide]: https://docs.conda.io/projects/conda/en/latest/index.html

パッケージ管理ツール[`pixi`]を使用して[conda-forge]からSciPyをインストールする手順は、`uv`を使った場合と非常に似ています。

コンピューターを再起動した後、`try-scipy`プロジェクトディレクトリに移動し、`uv run python`を実行して、SciPyをインポート可能なPythonインタプリタに戻る必要があります。
Pythonスクリプトを実行するには、`uv run myscript.py`を使用できます。
あるPython スクリプトを実行するには、 `uv run myscript.py` コマンドを使用します。

詳細は[uvのプロジェクトでの作業ガイド][uv-projects]をご覧ください。

[uv-projects]: [https://docs.astral.sh/uv/guides/projects/]\(https://docs.astral.sh/uv/guides/projects/\)

{{< /admonition >}}

### `pixi` を使用したインストール

Python以外のパッケージも扱う場合、[Conda]パッケージとしてSciPyをインストールすることを好むかもしれません。[PyPI](https://pypi.org/)（Python Package Index）で利用できないパッケージにも同じワークフローを使用できるようにするためです。
Condaはあらゆる言語のパッケージを管理できるため、Python自体、コンパイラー、その他の言語をインストールするために使用できます。
Condaは任意の言語でパッケージを管理できるため、
Python自体や、コンパイラ、その他の言語をインストールするのにも使用できます。

[Conda]: [https://docs.conda.io/projects/conda/en/latest/index.html]\(https://docs.conda.io/projects/conda/en/latest/index.html\)

パッケージ管理ツール[`pixi`]を使用して[conda-forge]からSciPyをインストールする手順は、`uv`の手順と非常によく似ています。

[conda-forge]: [https://conda-forge.org/]\(https://conda-forge.org/\)
[`pixi`]: [https://pixi.sh/latest/]\(https://pixi.sh/latest/\)

1. [`pixi`ドキュメントのインストール手順][install-pixi]に従って、`pixi`をインストールします。

[install-pixi]: [https://pixi.sh/latest/]\(https://pixi.sh/latest/\)

2. 新しいサブディレクトリに新しいプロジェクトを作成します。

```bash
pixi init try-scipy
cd try-scipy
```

3. SciPyをプロジェクトに追加します。

```bash
pixi add scipy
```

4. SciPyを試してみましょう！

```bash
pixi run python
```

'''

[[tab]]
name = '環境ベース'
content = ''' <a name="environment-based"></a>

プロジェクトベースのワークフローでは、プロジェクトはプロジェクトを記述するマニフェストファイル、プロジェクトの正確な依存関係を記述するロックファイル、およびプロジェクトの（複数の可能性のある）環境を含むディレクトリです。

対照的に、
環境ベースのワークフローでは、パッケージを環境にインストールし、どのディレクトリからでもその環境をアクティブ化および非アクティブ化できます。
これらのワークフローは確立されていますが、プロジェクトベースのワークフローのような再現性の利点がいくつか欠けています。
この環境ベースのワークフローは十分に方法論として確立されていますが、
プロジェクトベースのワークフローのような再現性という利点はありません。

### `pip` を使用したインストール

<!-- prettier-ignore-start -->

1. [Pythonをインストール](\[https://www.python.org/downloads/)します]([https://www.google.com/search?q=https://www.python.org/downloads/)%E3%81%97%E3%81%BE%E3%81%99](https://www.google.com/search?q=https://www.python.org/downloads/)%E3%81%97%E3%81%BE%E3%81%99))。

2. `venv` を使用して仮想環境を作成し、アクティブ化します。

{{< admonition hint >}}
[Python Packaging User Guideのチュートリアル](\[https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments)をご覧ください]([https://www.google.com/search?q=https://packaging.python.org/en/latest/tutorials/installing-packages/%23creating-virtual-environments)%E3%82%92%E3%81%94%E8%A6%A7%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84](https://www.google.com/search?q=https://packaging.python.org/en/latest/tutorials/installing-packages/%23creating-virtual-environments)%E3%82%92%E3%81%94%E8%A6%A7%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84))。
{{< /admonition >}}
{{< /admonition >}}

3. [`pip`] を使用して SciPy をインストールします。

```bash
python -m pip install scipy
```

<!-- prettier-ignore-end -->

[`pip`]: [https://pip.pypa.io/en/stable/getting-started/]\(https://pip.pypa.io/en/stable/getting-started/\)

### `conda` を使用したインストール

[Miniforge] は、2つのCondaベースの環境マネージャーである `conda` と [`mamba`] をインストールする推奨方法です。
環境を作成した後、conda-forge から SciPy を次のようにインストールできます。
環境を作成したら、conda-forgeから下記の方法でSciPyをインストールできます。

```bash
conda install scipy # または
mamba install scipy
```

[Miniforge]: [https://conda-forge.org/download/]\(https://conda-forge.org/download/\)
[`mamba`]: [https://mamba.readthedocs.io/en/latest/]\(https://mamba.readthedocs.io/en/latest/\)

'''

[[tab]]
name = 'パッケージマネージャー'
content = ''' <a name="system-package-managers"></a>

## システムパッケージマネージャーを介したシステムワイドなインストール

システムパッケージマネージャーは、最も一般的なPythonパッケージをインストールできます。
それらはコンピューター全体にパッケージをインストールし、多くの場合古いバージョンを使用し、利用可能なバージョンも多くありません。推奨されるインストール方法ではありません。
この方法を使うと、コンピュータ全体にパッケージがインストールされます。しかし、システムのパッケージマネージャーは、しばしば古いバージョンである
パッケージをインストールし、利用可能なバージョンは他の方法に比べると、あまり多くはありません。 これらの方法は、推奨されるインストール方法ではありません。

### Ubuntu および Debian

`apt-get` を使用する場合:

```bash
sudo apt-get install python3-scipy
```

### Fedora

`dnf` を使用する場合:

```bash
sudo dnf install python3-scipy
```

### macOS

macOS にはプリインストールされたパッケージマネージャーはありませんが、[Homebrew](https://brew.sh/) をインストールして、それを使用して SciPy (および Python 自体) をインストールできます。

```bash
brew install scipy
```

'''

[[tab]]
name = 'ソースからのビルド'
content = ''' <a name="building-from-source"></a>

注意点: ソースコードからSciPyをビルドするのは簡単ではない場合があります。 お使いのプラットフォームで、上記の方法のいずれかを通じてバイナリソフトが利用可能な場合は、それを使用することをおすすめします。
ソースコードからのビルド方法の詳細については、
\[ビルドドキュメント] を参照してください。

[building-docs]: https://scipy.github.io/devdocs/building/index.html

'''

{{</ tabs >}}

次のステップは[SciPyユーザーガイド](\[https://docs.scipy.org/doc/scipy/tutorial/)をご覧ください]([https://www.google.com/search?q=https://docs.scipy.org/doc/scipy/tutorial/)%E3%82%92%E3%81%94%E8%A6%A7%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84](https://www.google.com/search?q=https://docs.scipy.org/doc/scipy/tutorial/)%E3%82%92%E3%81%94%E8%A6%A7%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84))。

{{< admonition tip >}}
IDE（統合開発環境）で正確な型ヒントを提供するために、型スタブのインストールが必要になる場合があります。
{{< /admonition >}}

## 型スタブを使用したインストール

静的型スタブは、PyPI および conda-forge 上の別のパッケージ `scipy-stubs` を介して利用可能です。
PyPI の `scipy-stubs[scipy]` extra または conda-forge の `scipy-typed` パッケージを介して、SciPy と `scipy-stubs` を単一のパッケージとしてインストールすることもできます。
SciPy の特定のバージョン `x.y.z` (例: `1.14.1`) を取得するには、バージョン `x.y.z.*` をインストールする必要があります。例:
SciPy と `scipy-stubs` を単一のパッケージとしてインストールすることも可能です。
PyPI の場合は、追加の `scipy-stubs[scipy]` 経由でインストールする方法や、conda-forge の `scipy-typed`
パッケージ経由でインストールする方法があります。
特定バージョンの SciPy（例: 1.14.1）を取得するには、以下のようにインストールします：

```bash
uv add "scipy-stubs[scipy]==1.14.1.*" # または
pixi add "scipy-typed=1.15.0.*" # または
python -m pip install "scipy-stubs[scipy]" # または
conda install "scipy-typed>=1.14"
```

静的型付けのサポートに関する質問は、
[`scipy-stubs` GitHubリポジトリ](\[https://github.com/jorenham/scipy-stubs)にお寄せください](https://www.google.com/search?q=https://github.com/jorenham/scipy-stubs)%E3%81%AB%E3%81%8A%E5%AF%84%E3%81%9B%E3%81%8F%E3%81%A0%E3%81%95%E3%81%84)。
