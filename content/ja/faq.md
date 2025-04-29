---
title: よくある質問と回答(FAQ)
sidebar: false
---

## SciPyとは？

SciPy は Python 用のオープンソース (BSD ライセンス) な科学計算ツール群です。 現時点で、SciPyは特殊関数や、数値積分、常微分方程式（ODE）ソルバー、勾配最適化、並列プログラミングツール、高速実行のためのC++トランスパイラなどをサポートしています。 ある一つの良い大まかな目安として、数値計算に関する一般的な教科書（例えば、有名な「Numerical Recipes」シリーズ）に載っている計算手法は、おそらくSciPyに実装されています。

## SciPyを使うのにどれくらいの費用がかかりますか？

SciPyは無料で利用できます。 SciPyはオープンソースソフトウェアとして配布されています。
つまり、誰でもソースコードにアクセスでき、比較的寛容なBSD ライセンスによって許されている条件下で
使用することができます。

## SciPyのライセンス条件とはどんなものですか？

SciPyのライセンスは、BSDライセンスの条件に従い、商用・非商用のどちらでも利用できます。
詳細は[こちら](https://github.com/scipy/scipy/blob/main/LICENSE.txt)をご参照ください。

## Pythonのようなインタープリター型言語で書かれているのに、SciPyはどのように高速な計算を実現しているのでしょうか？

実は、SciPyでは計算時間に大きな影響を与えるループ処理は通常、C、C++、またはFortranで実装されています。 実際の所、SciPyの一部のコードは、こちらにあるような既存の自由に利用できる科学計算ライブラリを薄くラップしただけのものもあります。 <https://www.netlib.org/> Netlib は、C および Fortran で書かれた非常に性能がが高く堅牢な、科学技術計算用アルゴリズムが集められた巨大なリポジトリです。 これらのコードやアルゴリズムを書き換えるのはあまり賢明ではなく、デバッグには何年もかかります。 SciPyでは、これらのコードの周りに「wrappers」を作ることにより、様々な
メソッドを使用できるようにしています。これにより、SciPyを使って、これらのメソッドはPythonから使用できるようになります。 SciPyのいくつかのラッパー部は、C言語のコードで
手動で生成されました。残りは、SWIGまたは
[f2py](https://www.f2py.com) を使用して生成されています。 SciPyに対する最近のコードでは、いくつかはPythonで全て書かれているか、
[Cython](https://cython.org/) または [Pythran](https://pythran.readthedocs.io) でラップされています。

二つ目の答えとしては、解くことが難しい問題に関してです。 より良いアルゴリズムは、
このような問題を解くのに時間に、大きな差をもたらします。
なので、SciPyが実装している賢いアルゴリズムを使用することで、C言語などで実装された単純な
アルゴリズムよりもはるかに高速に計算できるかもしれません。

## バグを見つけました。 どうすればいいでしょうか？

SciPyの開発チームは可能な限り信頼できるソフトウェアを開発できるように努力していますが、どのソフトウェア製品でも同じですがバグが発生してしまいます。 もしあなたがソフトウェアに影響を与えるバグを見つけた場合は、こちらの[SciPyバグトラッカー](https://github.com/scipy/scipy/issues)にチケットを作成して教えて下さい。

## SciPyのプロジェクトに参加するにはどうしたらいいですか？

私達の [コミュニティ](/community)ページを見てみて下さい。
私たち開発チームは、より多くの人々がコードや、
テスト、ドキュメント、ウェブサイトの作成を手助けすることを望んでいます。

## 有償サポートはありますか?

はい。有償のサポートが [Anaconda](https://www.anaconda.com)や、
[Enthought](https://www.enthought.com)、
[Quansight](https://www.quansight.com)などの様々な会社から提供されています。

# NumPyと、SciPy、そしてその他のパッケージとの比較

## Numpy と Scipy の違いは何ですか?

現在のコンセプトとしては、NumPyには配列データ型と基本的な操作、例えばインデックス操作や、ソート、配列形状変更、要素に対するの基本的な関数などしか含まれないはずです。 そして、それ以外のすべての数値解析のコードは、SciPyに存在すべきです。
しかし、NumPyの重要な目標の1つは、過去のバージョンに対する互換性であるため、NumPy
では、過去のいずれのバージョンでサポートされていたすべての機能を出来るだけ保持しようとしています。
そのような歴史的な経緯より、NumPyにはいくつかの線形代数関数とフーリエ変換の関数が含まれています。 しかし、基本的にScipy には、線形代数演算のより豊富したルーチン群と、他の種類の多くの数値演算アルゴリズムが含まれています。 もしあなたがPythonで科学計算を行っている場合は、基本的にはNumPyとSciPyの両方をインストールする必要があります. また、基本的に新機能は NumPy ではなく、SciPyに追加されています。

## SciPyを使ってグラフのプロットを作るにはどうすればいいですか？

グラフのプロット機能はSciPyがカバーする範囲を超えています。
SciPyは数値解析オブジェクトとアルゴリズムに焦点を当てています。 しかさ、SciPyと密接に統合され、高品質なプロットを作成できるパッケージがいくつか存在します。その中でも、特に人気があるのが [Matplotlib](https://matplotlib.org)です。 その他の一般的な可視化ライブラリとしては [Bokeh](https://bokeh.pydata.org/en/latest)や
[Plotly](https://plot.ly) 、 [Altair](https://altair-viz.github.io) などがあります。

## SciPyを使って3Dプロット/3Dビジュアライゼーションを作るにはどうすればいいですか?

2Dプロットと同様に、3DプロットはSciPyのカバー範囲を超えています。しかし、2Dの場合と同じように、SciPyと統合できるパッケージが存在します。
[Matplotlib](https://matplotlib.org) はmplot3d サブパッケージで基本的な3Dプロット機能を提供しています。また、[Mayavi](https://docs.enthought.com/mayavi/mayavi/) は強力な [VTK](https://www.vtk.org/)可視化エンジンを利用し、高品質て様々な3D可視化機能を提供しています。

## なぜ、`numpy.linalg` と `scipy.linalg` の両方があるのですか？ それぞれの違いは何ですか?

`scipy.linalg` は
[f2py](https://www.f2py.com) を使用した、 [LAPACK](https://www.netlib.org/lapack/) をより完全にラッピングしたモジュールです。

NumPyの大きな設計目標の一つは、Fortranコンパイラなしでビルドできるようにすることでした。なのでもしLAPACKが利用できない場合、NumPyは独自の実装を使用しています。 SciPy では、ビルドのためにFortranコンパイラが必要であり、ラップされた Fortran コードにSciPyは大きく依存しています。

NumPyとSciPyのlinalgモジュールには共通の関数がいくつかありますが、docstringが異なります。また、scipy.linalgにはnumpy.linalgにはない関数が含まれています。例えば、
[LU分解](https://en.wikipedia.org/wiki/LU_decomposition)
や[Schur分解](https://en.wikipedia.org/wiki/Schur_decomposition),
に関連する関数、複数の擬似逆行列を計算する方法、そして
[行列対数](https://en.wikipedia.org/wiki/Logarithm_of_a_matrix).
のような行列の超越関数などはSciPyにしか実装されていません。 また、NumPyとSciPyの両方に存在する関数の中には、scipy.linalgではNumPyのものに比べて、機能が拡張されているものがあります。例えば、scipy.linalg.eig は2つ目の行列を引数として受け取り、[一般化固有値問題](https://en.wikipedia.org/wiki/Generalized_eigenvalue_problem)を解くことができます。

# Pythonのサポートバージョン

## NumPy と Scipy は Python 2.7 をまだサポートしていますか?

Python 2.7 をサポートした NumPyの最後のバージョンは NumPy 1.16.x です。 SciPyの最後のバージョンはSciPy 1.2.xです。 Python 3.x系 をサポートしたNumpy
の最初のリリースは Numpy 1.5.0 でした。 SciPyでは、SciPy0.9.0 で Python 3 のサポートが
導入されました。

## SciPyはPyPyで動きますか？

基本的には、動くと思います。 近年の[PyPy](https://pypy.org)の改善により、化学計算Pythonライブラリ群はPyPyで動くようになりました。 但し、SciPyの多くはCの拡張モジュールとして実装されているため、PyPyでSciPyのコードが必ずしも高速に実行されるわけではありません（ほとんどの場合、むしろ大幅に遅くなります。ただし、PyPyはこれを改善するために積極的に取り組んでいます）。 ベンチマーキングの場合と同様に、あなたの経験が1番の指針となります。

## SciPyはJythonかC\#/.NET上で動作しますか?

どちらもサポートされていません。 まず、Jythonは動作しませんでした。なぜなら、JythonはJava仮想マシン（JVM）の上で実行されるため、標準のPython（CPython）インタープリター向けにCで書かれた拡張機能とJythonが連携する方法がないからです。

数年前、NumpyとSciPyを.NETと互換性のある
にする取り組みが実施されました。 当時の一部のユーザーから、Windows 上 で、32 ビットの[Ironclad](https://code.google.com/archive/p/ironclad) でNumPyを使用することに成功したと報告されました。 加えて、 [Pyjion](https://www.trypyjion.com) は、
がSciPyを動かすことができると言われている新しいプロジェクトです。

いずれにしても、これらのランタイム/コンパイラはSciPyのサポート範囲外であり、
開発チームによって公式にはサポートされていません。

# ヘルプを受けられる場所

私達の [コミュニティ](/community)ページを参照下さい。
