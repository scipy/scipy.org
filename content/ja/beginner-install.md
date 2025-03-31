---
title: 初心者のためのインストールガイド
sidebar: false
---

{{< admonition tip >}}
これは初心者用のインストールガイドです。
もしあなたがターミナルの使用に慣れていて、パッケージマネージャーの使い方を学ぶ意欲がある方は、こちらの[メインのインストールガイド](./install.md)をチェックしてください！
{{< /admonition >}}

- [JupyterLite](#jupyterlite)
- [科学計算用Pythonディストリビューション](#distributions)
- [`pip`を使って、グローバルな環境にインストールする](#pip-global)

<a name="jupyterlite"></a>

## JupyterLite

SciPyを試してみるだけなら、インストールする必要すらありません！
こちらならアクセスすることで、ブラウザで SciPy を使用できます: https://jupyter.org/try-jupyter/lab/
Python ノートブックを開き、ノートブックの「セル」に `import scipy` と入力して実行ボタンを押してください。

次のステップに関しては、 [SciPyユーザガイド][scipy-user-guide]を確認ください。

[scipy-user-guide]: https://docs.scipy.org/doc/scipy/tutorial/

<a name="distributions"></a>

## 科学計算向けPython のディストリビューション

いくつかの科学計算向けPython のディストリビューションには、Python 言語本体に加えて、広く一般的に使用されるパッケージやツールが初めから含まれています。 これらのダウンロード可能なファイルは、ほとんどの場合、設定不要で、ほぼすべての環境で動作し、最も一般的に使用される科学技術向けの Python ツールを提供しています。
[Anaconda](https://www.anaconda.com/download/) は、Windows、Mac、
および Linux 上で動作し、初心者ユーザーに最適なディストリビューションの一つです。
その他の候補は次のとおりです:

- [WinPython](https://winpython.github.io): 科学的なパッケージとスパイダーIDEを含むフリーのディストリビューション。但し、Windowsのみ。
- [Pyzo](https://pyzo.org): AnacondaとIEP対話型開発環境に基づく無料のディストリビューション。Linux、Windows、およびMacに対応。

{{< admonition note >}}
Anaconda は、個人、大学、および従業員 が200 人未満の企業で無料で利用できます。 詳細については、Anaconda のわかりやすいブログ[Anaconda はいつ無料で利用できるのか？](https://www.anaconda.com/blog/update-on-anacondas-terms-of-service-for-academia-and-research)を参照してください。
{{< /admonition >}}

科学計算向けの Python ディストリビューションをインストールしたら、[SciPy ユーザーガイド][scipy-user-guide]で次のステップを確認してください。

<a name="pip-global"></a>

## `pip`でグローバル環境にインストールする

すでに Python がインストールされている場合は、ターミナルやシェルで次のコマンドを実行することで`pip`を使用して SciPy をインストールできます。

```
python -m pip install scipy
```

{{< admonition warning >}}
You may see this recommended in tutorials or classes, but the recommended
way to install SciPy with `pip` is to use a virtual environment -
see.{{< admonition warning >}}
チュートリアルや学校の授業で、このインストール方法が推奨されることがあるかもしれませんが、`pip`を使用して SciPy をインストールする我々としての推奨方法は、仮想環境を利用することです。詳しくは、[`pip`を利用したインストール](./install.md#installing-with-pip)を参照してください。
{{< /admonition >}}

{{< admonition note >}}
このインストール方法が推奨されない理由について詳しく知りたい場合は、[Pythonのパッケージ化のユーザガイドの仮想環境に関する説明](https://packaging.python.org/en/latest/tutorials/installing-packages/#creating-virtual-environments)を参照してください。
{{< /admonition >}}
