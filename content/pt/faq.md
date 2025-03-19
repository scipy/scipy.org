---
title: Dúvidas Frequentes (FAQ)
sidebar: false
---

## O que é a SciPy?

SciPy é um conjunto de ferramentas científicas e numéricas de código aberto (licença BSD) em Python. Atualmente suporta funções especiais, integração,
resolvedores de equações diferenciais ordinárias (ODE), otimização,
ferramentas paralelas de programação, um compilador de expressão para C++ para rápida execução
e outros. Uma boa regra geral é que se um algoritmo estiver descrito em
um livro didático sobre computação numérica (por exemplo, a conhecida série
Receitas Numéricas), provavelmente está implementado na SciPy.

## Quanto custa isso?

A SciPy está disponível gratuitamente. Ela é distribuida como software de código aberto (open source), o que significa que você tem acesso completo ao código e pode usá-lo de qualquer maneira que seja permitida pela licença liberal BSD.

## Quais são os termos da licença da SciPy?

A licença da SciPy é gratuita para uso comercial e não-comercial, pelos termos da [licença BSD](https://github.com/scipy/scipy/blob/main/LICENSE.txt).

## Como a SciPy pode ser rápida se é escrita em uma linguagem interpretada como Python?

Na verdade, os loops críticos que determinam o desempenho da biblioteca são normalmente implementados em C, C++ ou Fortran. Partes da SciPy são camadas finas de código desenvolvidas sobre as rotinas científicas
que estão livremente disponíveis em <https://www.netlib.org/>. Netlib
é um enorme repositório de algoritmos científicos incrivelmente valiosos e robustos de
escritos em C e Fortran. Não seria ideal reescrever estes algoritmos e trabalhar por anos para debugá-los. SciPy usa uma variedade de métodos
para gerar \"wrappers\" em torno desses algoritmos para que eles
possam ser usados em Python. Alguns wrappers foram gerados manualmente
em C. O restante foi gerado usando SWIG ou
[f2py](https://www.f2py.com). Algumas das contribuições mais recentes para SciPy
são ou escritas completamente ou estão empacotadas com
[Cython](https://cython.org/) ou [Pythran](https://pythran.readthedocs.io).

Uma segunda resposta é a seguinte: para problemas difíceis, um melhor algoritmo pode
fazer uma tremenda diferença no tempo necessário para resolver um problema.
Então, usar os algoritmos integrados da SciPy pode ser muito mais rápido do que um algoritmo
simples implementado em C.

## Encontrei um bug. O que devo fazer?

A equipe de desenvolvimento da SciPy trabalha duro para tornar a SciPy tão confiável quanto
possível, mas, como em qualquer produto de software, ocorrem erros. Se você encontrar
bugs que afetam seu software, por favor, nos informe abrindo uma issue no
o [rastreador de erros da SciPy](https://github.com/scipy/scipy/issues).

## Como posso me envolver com a SciPy?

Vá até nossa página [community](/community).
Estamos interessados em que mais pessoas ajudem a escrever código,
testes, documentação e a desenvolver nosso site.

## Existe apoio comercial disponível?

Sim, o suporte comercial é oferecido à SciPy por várias empresas,
por exemplo [Anaconda](https://www.anaconda.com),
[Enthought](https://www.enthought.com) e
[Quansight](https://www.quansight.com).

# NumPy vs. SciPy vs. outros pacotes

## Qual é a diferença entre NumPy e SciPy?

Em um mundo ideal, o NumPy não contém nada além do tipo de dados de array
e as operações mais básicas: indexação, ordenação, reformatação, funções elementares
básicas, etc. Todo código numérico deveria viver na SciPy.
No entanto, um dos objetivos importantes da NumPy é a compatibilidade, então a NumPy
tenta manter todos os recursos suportados por qualquer dos seus antecessores.
Assim, a NumPy contém algumas funções de álgebra linear e transformações de Fourier, embora fosse mais apropriado que estas funções pertencessem à SciPy. Em qualquer caso, a SciPy contém versões mais completas dos módulos de álgebra linear, bem como muitos outros algoritmos numéricos. Se você está fazendo computação científica
com Python, você deve provavelmente instalar tanto a NumPy
quanto a SciPy. A maioria dos novos recursos pertence à SciPy ao invés da NumPy.

## Como faço um gráfico usando a SciPy?

A funcionalidade de plotar gráficos vai além do escopo da SciPy, que
se concentra em objetos numéricos e algoritmos. Existem vários pacotes que podem ser integrados com a SciPy para produzir gráficos de alta qualidade,
como o imensamente popular [Matplotlib](https://matplotlib.org). Outras
opções populares são [Bokeh](https://bokeh.pydata.org/en/latest),
[Plotly](https://plot.ly) e [Altair](https://altair-viz.github.io).

## Como faço para fazer gráficos/visualizações em 3D usando a SciPy?

Assim como a produção de gráficos em 2D, os gráficos 3D estão além do escopo da SciPy. Tal como no caso do 2D, existem pacotes que podem ser integrados à SciPy para gerar esses gráficos.
[Matplotlib](https://matplotlib.org) fornece gráficos 3D básicos na sub-biblioteca `mplot3d`, enquanto o [Mayavi](https://docs.enthought.com/mayavi/mayavi/) fornece mais opções para visualizações de gráficos em 3D, usando a potente <i>engine</i> [VTK](https://www.vtk.org/).

## Por que existe uma `numpy.linalg` e uma `scipy.linalg`? Qual é a diferença?

`scipy.linalg` é um empacotamento mais completo da biblioteca Fortran [LAPACK](https://www.netlib.org/lapack/) usando
[f2py](https://www.f2py.com).

Um dos objetivos de design da NumPy foi torná-la compilável sem um compilador
Fortran, e se você não tiver a LAPACK disponível, a NumPy irá
usar a sua própria implementação. A SciPy requer que o compilador Fortran esteja instalado, e depende fortemente do código Fortran encapsulado.

Os módulos `linalg` na NumPy e na SciPy
têm algumas funções em comum, mas com diferentes docstrings, e a
`scipy.linalg` contém funções não
encontradas em `numpy.linalg`, como funções
relacionadas com a [decomposição LU](https://en.wikipedia.org/wiki/LU_decomposition) e a
[decomposição de Schur](https://en.wikipedia.org/wiki/Schur_decomposition),
múltiplas maneiras de calcular a pseudoinversa e operações matriciais com funções transcendentais, como o [logaritmo de uma matriz](https://en.wikipedia.org/wiki/Logarithm_of_a_matrix). Algumas funções
que existem em ambos os submódulos possuem funcionalidade aumentada na
`scipy.linalg`; por exemplo,
`scipy.linalg.eig` aceita um segundo argumento matricial
para resolver [problemas de autovalores generalizados](https://en.wikipedia.org/wiki/Generalized_eigenvalue_problem).

# Suporte a versões de Python

## A NumPy e a SciPy ainda suportam o Python 2.7?

A última versão da NumPy que suporta o Python 2.7 é a NumPy 1.16.x. A
última versão da SciPy que o faz é a SciPy 1.2.x. A primeira versão doaNumPy
que suporta o Python 3.x foi a NumPy 1.5.0. O suporte ao Python 3 na SciPy foi
introduzido na SciPy 0.9.0.

## A SciPy funciona com o PyPy?

Em geral, sim. Melhorias recentes do [PyPy](https://pypy.org) fizeram-no funcionar bem com a stack científica do Python. Uma vez que grande parte da SciPy é
implementada como módulos de extensão C, o código pode não ser executado mais rápido (para a maioria dos casos é
significativamente mais lento, no entanto, PyPy está trabalhando ativamente para melhorar esta situação). Como sempre quando se trata de benchmarking, sua experiência será seu melhor guia.

## A SciPy funciona com Jython ou C\#/.NET?

Não, nenhum dos dois. Jython nunca funcionou, porque ele roda em cima da
Máquina Virtual Java e não há como criar interfaces com extensões
escritas em C para o interpretador padrão Python (CPython).

Há alguns anos, houve um esforço para tornar a NumPy e a SciPy compatíveis
com .NET. Alguns usuários no momento relataram sucesso ao usar a NumPy com
[Ironclad](https://code.google.com/archive/p/ironclad) no Windows 32 bits. Por último, [Pyjion](https://www.trypyjion.com) é um novo projeto que, alegadamente,
poderia funcionar com a SciPy.

De qualquer forma, esses compiladores/runtimes não fazem parte do escopo da SciPy e não são suportados oficialmente pelo time de desenvolvimento.

# Onde obter ajuda

Vá até nossa página [community](/community).
