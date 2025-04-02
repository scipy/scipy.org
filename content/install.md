---
title: インストール
sidebar: false
---

{{< admonition tip >}}
このページの説明では、パッケージマネージャーの使い方を学ぶために、ターミナルを使うことには慣れていることを前提としています。 もしあなたが初心者で、できるだけ早くSciPyを始めたい場合は、[初心者向けインストールガイド](./beginner-install.md)をチェックしてみて下さい！
{{< /admonition >}}

SciPyのインストール方法は、実施したいワークフローによって異なります。
一般的なワークフローは大まかに下記のカテゴリに分類できます。

- [プロジェクトベースのワークフロー (例: `uv`, `pixi`を利用)](#project-based) (こちらは新規ユーザ向けに推奨)
- [環境ベースのワークフロー(例: `pip`, `conda`を利用)](#environment-based) (従来のワークフロー)
- [システムパッケージマネージャーを利用](#system-package-managers) (非推奨)
- [ソースコードのビルド](#building-from-source) (デバッグと開発用)

\[静的型スタブ]を使用してSciPyをインストールしたい場合は、こちらの[静的方スタブを利用したインストール方法](#type-stubs)を参照してください。

[static type stubs]: https://typing.readthedocs.io/en/latest/guides/libraries.html

統合開発環境（IDE）が正確な型ヒントを提供するために、型スタブのインストールが必要になる場合があります。
{{< /admonition >}}

{{< tabs >}}

[[tab]]
name = 'Project Based'
content = ''' <a name="project-based"></a>

### uvを使ってインストールする

ここではPythonのパッケージマネージャー[`uv`]を使用してSciPyを導入するための、各ステップ毎の手順を紹介します。

1. こちらの[uvのドキュメントのマニュアル](https://docs.astral.sh/uv/getting-started/installation/)に従って、`uv`をインストールします。

2. ターミナルで以下を実行して、新しいサブディレクトリに新しいプロジェクトを作成します。

```bash
uv init try-scipy
cd try-scipy
```

{{< admonition hint >}}
二つ目のコマンドは、あなたのプロジェクトのディレクトリに直接移動しています。
{{< /admonition >}}

3. ターミナルで以下を実行して、新しいサブディレクトリに新しいプロジェクトを作成します。

```bash
uv add scipy
```

{{< admonition note >}}
Python がまだインストールされていない場合、この作業により自動的にPythonがインストールされます！
{{< /admonition >}}

{{< admonition tip >}}
他のPythonライブラリも同じようにインストールできます。
例:

```bash
uv add matplotlib
```

{{< /admonition >}}

4. SciPyを試してみましょう！！

```bash
uv run python
```

This will launch a Python interpreter session, from which you can `import scipy`.

<!-- prettier-ignore-end -->

次のステップに関しては、 [SciPyユーザガイド][scipy-user-guide]を確認ください。

[scipy-user-guide]: https://docs.conda.io/projects/conda/en/latest/index.html

パッケージ管理ツール[`pixi`]を使用して[conda-forge]からSciPyをインストールする手順は、`uv`を使った場合と非常に似ています。

コンピュータを再起動した場合、設定が初期化されるので、再度 `try-scipy`プロジェクトのディレクトリに移動し、 `uv run python` を実行すると、SciPyがインポートできる状態のPython インタプリタを再度起動することができます。
あるPython スクリプトを実行するには、 `uv run myscript.py` コマンドを使用します。

より詳細はこちらの[uvを使ったプロジェクト管理][uv-projects]を確認下さい。

[uv-projects]: https://docs.astral.sh/uv/guides/projects/

{{< /admonition >}}

### `pixi`を使ってインストールする

もし、Python以外のパッケージを利用している場合は、SciPyを[Conda]パッケージとしてインストールすると便利です。これにより、PyPI（Python Package Index）で提供されていないパッケージも同じワークフローで管理できるようになります。
Condaは任意の言語でパッケージを管理できるため、
Python自体や、コンパイラ、その他の言語をインストールするのにも使用できます。

[Conda]: https://docs.conda.io/projects/conda/en/latest/index.html

パッケージ管理ツール[`pixi`]を使用して[conda-forge]からSciPyをインストールする手順は、`uv`を使った場合と非常に似ています。

[conda-forge]: https://conda-forge.org/
[`pixi`]: https://pixi.sh/latest/

1. `pixi`をインストールするには, こちらの[`pixi`の公式ドキュメントの手順][install-pixi]を参照下さい。

[install-pixi]: https://pixi.sh/latest/

2. 新しいサブディレクトリに新しいプロジェクトを作ります。

```bash
pixi init try-scipy
cd try-scipy
```

3. ターミナルで以下を実行して、新しいサブディレクトリに新しいプロジェクトを作成します。

```bash
pixi add scipy
```

4. SciPyを試してみましょう！！

```bash
pixi run python
```

'''

[[tab]]
name = 'Environment Based'
content = ''' <a name="environment-based"></a>

プロジェクトベースのワークフローでは、プロジェクトは、プロジェクトを記述するマニフェストファイルや、正確な依存関係を記述するロックファイル、そしてプロジェクトの環境（複数環境の場合もあり）を含むディレクトリのことを指します。

対照的に、環境ベースのワークフローでは、パッケージを環境へインストールします。
任意のディレクトリからアクティブ化および非アクティブ化することができます。
この環境ベースのワークフローは十分に方法論として確立されていますが、
プロジェクトベースのワークフローのような再現性という利点はありません。

### `pip`でインストールする

<!-- prettier-ignore-start -->

1. [Pythonをインストールします](https://www.python.org/downloads/).

2. `venv` を使用して仮想環境を作成し、アクティブにします。

{{< admonition hint >}}
詳細は[Pythonパッケージングユーザーガイド](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments)を参照して下さい。
{{< /admonition >}}

3. [`pip`] を使用して SciPy をインストールします。

```bash
python -m pip install scipy
```

<!-- prettier-ignore-end -->

[`pip`]: https://pip.pypa.io/en/stable/getting-started/

### `conda`でインストールする

[Miniforge] は `conda` と [`mamba`]をインストールするための推奨方法です。
この二つの両方のとも、Condaベースの環境マネージャーです。
環境を作成したら、conda-forgeから下記の方法でSciPyをインストールできます。

```bash
conda install scipy # or
mamba install scipy
```

[Miniforge]: https://conda-forge.org/download/

[`mamba`]: https://mamba.readthedocs.io/en/latest/

'''

[[tab]]
name = 'Package Manager'
content = ''' <a name="system-package-managers"></a>

## 型スタブをインストールする

システムパッケージマネージャは、Pythonパッケージをインストールする上で、最も一般的な方法です。
この方法を使うと、コンピュータ全体にパッケージがインストールされます。しかし、システムのパッケージマネージャーは、しばしば古いバージョンである
パッケージをインストールし、利用可能なバージョンは他の方法に比べると、あまり多くはありません。 これらの方法は、推奨されるインストール方法ではありません。

### UbuntuとDebian

`apt-get` を使用します。

```bash
sudo apt-get install python3-scipy
```

### Fedora

`dnf`を使用します。

```bash
sudo dnf install python3-scipy
```

### macOS

macOS にはプリインストールされたパッケージマネージャがありませんが、
[Homebrew](https://brew.sh/) をインストールして利用することで、SciPy (と Python 自体) をインストールすることができます。

```bash
brew install scipy
```

'''

[[tab]]
name = 'Building from Source'
content = ''' <a name="building-from-source"></a>

注意点: ソースコードからSciPyをビルドするのは簡単ではない場合があります。 お使いのプラットフォームで、上記の方法のいずれかを通じてバイナリソフトが利用可能な場合は、それを使用することをおすすめします。
ソースコードからのビルド方法の詳細については、
\[ビルドドキュメント] を参照してください。

[building-docs]: https://scipy.github.io/devdocs/building/index.html

'''

{{</ tabs >}}

[SciPyユーザーガイド](https://docs.scipy.org/doc/scipy/tutorial/)の次のステップを確認下さい。

<a name="type-stubs"></a>

## 型スタブのインストール

SciPyの静的型スタブに関しては、PyPI と conda-forge 上で配布されている、別のパッケージである `scipy-stubs`から利用できます。
SciPy と `scipy-stubs` を単一のパッケージとしてインストールすることも可能です。
PyPI の場合は、追加の `scipy-stubs[scipy]` 経由でインストールする方法や、conda-forge の `scipy-typed`
パッケージ経由でインストールする方法があります。
SciPy の特定のバージョン `x.y.z` (`1.14.1`など) をインストールするには、
`x.y.*` をインストールする必要があります。例:

```bash
uv add "scipy-stubs[scipy]==1.14.1.*" # or
pixi add "scipy-typed=1.15.0.*" # or
python -m pip install "scipy-stubs[scipy]" # or
conda install "scipy-typed>=1.14"
```

静的型サポートについての質問は、
[`scipy-stubs` のGitHub リポジトリ](https://github.com/jorenham/scipy-stubs)で直接問い合わせてください。
