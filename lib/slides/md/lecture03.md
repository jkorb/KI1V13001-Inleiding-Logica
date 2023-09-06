---
header-includes:
    - \usepackage{wasysym}
    - \usepackage{stmaryrd}
    - \usepackage{venndiagram}
    - \usetikzlibrary{fit,shapes}
...

# {}

\setcounter{framenumber}{61}
\LectureNo{3}
\maketitle

# Agenda

  1. Verzamelingen
  2. Inductie
  3. Functies
  4. Recursie

# Aanwezigheid
 
  \centering
  ![](img/attendance.png){height=50% width=50%}

# Herhaling: eisen aan definities?

  \centering 
  \Large

  ![](img/wooclap-3.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA3>


# Herhaling

  + Definitie van een object eist (a) existentie en (b) uniekheid.

# Verzamelingen

  \Large

  + Een _verzameling_ is een collectie van _elementen_:
  
  $$x\in X$$ 
  $$x\notin X$$

  + Hoe definieer je een verzameling?

# Definities en Extensionaliteit

  \Large

  + Elementen aangeven.

  + $X=Y$: dezelfden elementen.

  \vspace{4ex}

  $$X=Y\Leftrightarrow \text{voor alle }x, x\in X\text{ desda }x\in Y$$

# Methode 1: Extensionele definitie

  \LARGE

  $$\{x_1, \mathellipsis, x_n\}$$

  \vspace{4ex}

  $$a\in \{x_1, \mathellipsis, x_n\}\Leftrightarrow a=x_1\text{ of }\mathellipsis \text{ of }a=x_n$$

#

  \centering

  ![](img/same-picture.jpg){height=50% width=50%}


# Methode 2: Abstractie 

  \LARGE

  $$\{x:\Phi(x)\}$$

  \vspace{4ex}

  $$a\in \{x:\Phi(x)\} \Leftrightarrow \Phi(a)$$

# Russel's Paradox

  \large

  $$a\in \{x:\Phi(x)\} \Leftrightarrow \Phi(a)\tag{Definitie}$$

  \hfill

  (1) Stel dat $R:=\{x:x\notin x\}$ bestaat.
  
  (2) Dan: $R\in R$ desda $R\notin R$ \hfill (Definitie)
  
  (3) Maar: ofwel (a) $R\in R$ of $R\notin R$ \hfill (Bivalentie)

        (a) $R\in R$ en $R\notin R$ $\lightning$
        (b) $R\notin R$ en $R\in R$ $\lightning$

  (4) Dus, wat ook gebeurt: $\lightning$ \hfill (Gevalsonderscheiding)

  (5) Dus $R$ bestaat niet! \hfill (Ongerijmte)

# Methode $2'$: Abstractie (gerepareerd)

  \Large

  $$\{x\in X:\Phi(x)\}$$

  \vspace{4ex}

  $$a\in \{x\in X:\Phi(x)\} \Leftrightarrow a\in X\text{ en }\Phi(a)$$


# Methode 3: Inductie

  \Large

  + $\mathbb{N}=\{0,1,2,\mathellipsis\}$ is geen definitie!

  + Hoe dan?

# Definitie van $\mathbb{N}$

  \Large

  $\mathbb{N}$ is de kleinste verzameling $X$ zodanig dat:

  + $0\in X$

  + als $n\in X$, dan $n+1\in X$.

  \centering
  ![](img/domino.jpg){height=50% width=50%}

# Inductie

  \Large

  Bewijs dat alle $n\in \mathbb{N}$ eigenschap $\Phi(x)$ hebben door:

  + te bewijzen dat $\Phi(0)$

  + te bewijzen dat _als_ $\Phi(n)$, dan $\Phi(n+1)$

# Voorbeeld

\textbf{Stelling}: $0+\mathellipsis +n=\frac{n(n+1)}{2}$

_Bewijs_:

  + inductiebegin: $0+\mathellipsis+0=0=\frac{0(0+1)}{2}$
  + inductieveronderstelling: stel dat $0+\mathellipsis +n=\frac{n(n+1)}{2}$ \hfill (IH)
  + inductiestap:
  $$0+\mathellipsis +n +(n+1)=0+\mathellipsis +n +(n+1)$$
  $$=\frac{n(n+1)}{2} +(n+1)$$
  $$=\frac{n(n+1)+ 2(n+1)}{2}$$
  $$=\frac{(n+2)(n+1)}{2}$$

# Generalizatie 

  \large

  + Beginpunten: $0$

  + Constructies: $n\leadsto n+1$

  + Inductie over een inductief $X$

    - bewijs dat alle beginpunten $\Phi(x)$ hebben

    - bewijs dat $\Phi(x)$ invariant is onder de constructies

# Subset relatie

  \Large

  \centering

  $X\subseteq Y$ desda alle $x\in X$, ook $x\in Y$

  $X\nsubseteq Y$ desdal er bestaat een $x\in X$ met $x\notin Y$


# Lege verzameling


  $$\emptyset = \{\}$$
  $$\text{voor alle }x\text{, }x\notin \emptyset\tag{Definitie}$$

  \textbf{Stelling}: $\emptyset \subseteq X$, voor alle $X$.

  _Bewijs_:

  + Stel dat er een $X$ is met $\emptyset \nsubseteq X$.
  
  + Dan: er bestaat een $x\in \emptyset$ en $x\notin X$.
  
  + Maar dan $x\in \emptyset$ $\lightning$
  
  + Dus: $\emptyset\subseteq X$ \hfill (Ongerijmte)

# Machtsverzameling

  \Large

  $$\wp(X)=\{Y: Y\subseteq X\}$$


  \vspace{2ex}

  $$\wp(\{a,b,c\})$$
  $$=$$
  $$\{\emptyset, \{a\}, \{b\}, \{c\}, \{a,b\}, \{a,c\}, \{b,c\}, \{a,b,c\}\}$$

# $n$-tupels

  \Large


  + Verzameling + volgorde

  $$(a_1, \mathellipsis, a_n)$$

  $$\{a,b\} = \{b,a\}$$

  $$(a,b)\neq (b,a)$$

# Cartesisch producten

  $$X_1\times \mathellipsis X_n=\{(x_1, \mathellipsis, x_n): x_i\in X_i\}$$

  
  $$\{a,b,c\}=\{a,b,c\}$$
  $$=$$
  $$\{(a,a), (a,b), (a,c), (b,a), (b,b), (b,c), (c,a), (c,b), (c,c)\}$$


# Unie, doorsnede, en differentie

\centering
	\begin{tabular}{c c}
		\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
    \fillACapB
    \setpostvennhook
    {
    \draw (labelA) ++(150:4ex) node{$X$};
%      \draw (labelA) ++(-105:8ex) node{$\scriptstyle\bullet$} ++(0,0) node[above]{$n_{i j} $};
    \draw (labelB) ++(20:5ex) node{$Y$};
    \draw (venn bottom right) ++(-2.125,0.3) node{$X\cap Y$};
        }%
    \end{venndiagram2sets}
     &
 		\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
    \fillA \fillB
    \setpostvennhook
    {
    \draw (labelA) ++(150:4ex) node{$X$};
%      \draw (labelA) ++(-105:8ex) node{$\scriptstyle\bullet$} ++(0,0) node[above]{$n_{i j} $};
    \draw (labelB) ++(20:5ex) node{$Y$};
    \draw (venn bottom right) ++(-2.125,0.3) node{$X\cup Y$};
        }%
    \end{venndiagram2sets}
    \\
     \begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
    \fillOnlyA
    \setpostvennhook
    {
    \draw (labelA) ++(150:4ex) node{$X$};
%      \draw (labelA) ++(-105:8ex) node{$\scriptstyle\bullet$} ++(0,0) node[above]{$n_{i j} $};
    \draw (labelB) ++(20:5ex) node{$Y$};
    \draw (venn bottom right) ++(-2.125,0.3) node{$X\setminus Y$};
        }%
    \end{venndiagram2sets}      
 	\end{tabular}

# Welk definitie?

  \centering 
  \Large

  ![](img/wooclap-3.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA3>

# Een bewijs

$$X\subseteq Y\text{ desda alle }x\in X\text{, ook }x\in Y\tag{Definitie}$$

\textbf{Stelling}: Als $X\cap Y = X$, dan $X\subseteq Y$

_Bewijs_:

  (1) Stel: $X\cap Y=X$.

  (2) Stel: $x\in X$, voor arbitrair $x$

  (3) Dan:  $x\in X\cap Y$ \hfill (1)

  (4) Dan: $x\in Y$ \hfill $X\cap Y=\{x: X\in X\text{ en }\in Y\}$

  (5) Dus: $X\subseteq Y$ \hfill (2)--(4), (Definitie)

# Functies

  + wijst elementen van $X$ elementen van $Y$ toe

  + $f:X\to Y$

  + $dom(f)=X$, $rg(f)=Y$

  \centering

\begin{tikzpicture}[scale=1,
     >=stealth,
     bullet/.style={
       fill=black,
       circle,
       minimum width=1pt,
       inner sep=1pt
     },
     projection/.style={
       ->,
       thick,
       shorten <=2pt,
       shorten >=2pt
     },
     every fit/.style={
       ellipse,
       draw,
       inner sep=0pt
     }
   ]
     \foreach \y/\l in {1/4,2/3/,3/2,4/1}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};
 
     \foreach \y/\l in {1/c,2/b,3/a}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
 
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=1.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) ,minimum width=1.5cm] {} ;
 
     \draw[projection] (a1) -- (b1);
     \draw[projection] (a2) -- (b2);
     \draw[projection] (a3) -- (b3);
     \draw[projection] (a4) -- (b3);
\end{tikzpicture}
$$f:\{1,2,3,4\}\to \{a,b,c\}$$

# Zijn ze functies?

  \centering 
  \Large

  ![](img/wooclap-3.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA3>

# Zijn ze functies?

\centering

\begin{tabular}{c c c}
  \begin{tikzpicture}[scale=.5,
     >=stealth,
     bullet/.style={
       fill=black,
       circle,
       minimum width=1pt,
       inner sep=1pt
     },
     projection/.style={
       ->,
       thick,
       shorten <=2pt,
       shorten >=2pt
     },
     every fit/.style={
       ellipse,
       draw,
       inner sep=0pt
     }
   ]
     \foreach \y/\l in {1/d,2/c/,3/b,4/a}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};

     \foreach \y/\l in {1/4,2/3,3/2,4/1}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
 
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=1.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) (b4),minimum width=1.5cm] {} ;
 
     \draw[red,projection] (a4) -- (b4);
     \draw[red,projection] (a4) -- (b3);
     \draw[projection] (a2) -- (b3);
     \draw[projection] (a3) -- (b1);
     \draw[projection] (a1) -- (b2);
   \end{tikzpicture}
   &
   \quad
   &
    \begin{tikzpicture}[scale=.5,
     >=stealth,
     bullet/.style={
       fill=black,
       circle,
       minimum width=1pt,
       inner sep=1pt
     },
     projection/.style={
       ->,
       thick,
       shorten <=2pt,
       shorten >=2pt
     },
     every fit/.style={
       ellipse,
       draw,
       inner sep=0pt
     }
   ]
     \foreach \y/\l in {1/d,2/c/,3/b,4/a}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};
 
     \foreach \y/\l in {1/4,2/3,3/2,4/1}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
 
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=1.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) (b4),minimum width=1.5cm] {} ;
 
     \draw[projection] (a4) -- (b4);
     \draw[projection] (a2) -- (b1);
     \draw[projection] (a3) -- (b1);
     \draw[projection] (a1) -- (b1);
   \end{tikzpicture}
   
    \\[2ex]
   
   	\begin{tikzpicture}[scale=.5,
     >=stealth,
     bullet/.style={
       fill=black,
       circle,
       minimum width=1pt,
       inner sep=1pt
     },
     projection/.style={
       ->,
       thick,
       shorten <=2pt,
       shorten >=2pt
     },
     every fit/.style={
       ellipse,
       draw,
       inner sep=0pt
     }
   ]
     \foreach \y/\l in {1/1,2/2/,3/3,4/4}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};
 
     \foreach \y/\l in {1/4,2/3,3/2,4/1}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
 
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=1.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) (b4),minimum width=1.5cm] {} ;
 
     \draw[projection] (a4) -- (b1);
     \draw[projection] (a3) -- (b2);
     \draw[projection] (a2) -- (b3);
     \draw[projection] (a1) -- (b4);
   \end{tikzpicture}

   &
   \quad
   &
    \begin{tikzpicture}[scale=.5,
     >=stealth,
     bullet/.style={
       fill=black,
       circle,
       minimum width=1pt,
       inner sep=1pt
     },
     projection/.style={
       ->,
       thick,
       shorten <=2pt,
       shorten >=2pt
     },
     every fit/.style={
       ellipse,
       draw,
       inner sep=0pt
     }
   ]
     \foreach \y/\l in {2/c/,3/b,4/a}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};

     \node[bullet,fill={red},label=left:$d$] (a1) at (0,1) {};

     \foreach \y/\l in {1/4,2/3,3/2,4/1}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
 
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=1.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) (b4),minimum width=1.5cm] {} ;
 
     \draw[projection] (a4) -- (b4);
     \draw[projection] (a2) -- (b1);
     \draw[projection] (a3) -- (b1);
   \end{tikzpicture}
   
   \end{tabular}

# Binaire functies

  \centering

  \begin{tikzpicture}[scale=1,
   >=stealth,
   bullet/.style={
     fill=black,
     circle,
     minimum width=1pt,
     inner sep=1pt
   },
   projection/.style={
     ->,
     thick,
     shorten <=2pt,
     shorten >=2pt
   },
   every fit/.style={
     ellipse,
     draw,
     inner sep=0pt
   }
   ]
   \foreach \y/\l in {1/{(a,a)}, 2/{(a,b)}/,3/{(b,a)},4/{(b,b)}}
       \node[bullet,label=left:$\l$] (a\y) at (0,\y) {};
   
     \foreach \y/\l in {1/3,2/2,3/1}
       \node[bullet,label=right:$\l$] (b\y) at (4,\y) {};
   
     \node[draw,fit=(a1) (a2) (a3) (a4),minimum width=3.5cm] {} ;
     \node[draw,fit=(b1) (b2) (b3) ,minimum width=1.5cm] {} ;
   
     \draw[projection] (a4) -- (b1);
     \draw[projection] (a3) -- (b3);
     \draw[projection] (a2) -- (b2);
     \draw[projection] (a1) -- (b2);
  \end{tikzpicture}

  \begin{tabular}{c c c}

  \begin{tabular}{c c c c c c c c c c c}
  $(a,a)$ & $\overset{f}{\mapsto}$ & 2 & \quad & (b,a) & $\overset{f}{\mapsto}$ & 1 \\
  
  $(a,b)$ & $\overset{f}{\mapsto}$ & 2 & \quad & (b,b) & $\overset{f}{\mapsto}$ & 3\
  
  
  \end{tabular}

  &

  \begin{tabular}{ c | c c c}
  $f$ & $a$ & $b$ \\ \hline
  
  $a$ & 2   & 1   \\
  
  $b$ & 1   & 0   \\
  
  \end{tabular} 

  \end{tabular}

# Functie recursie

  + Functies met $dom(f)=\mathbb{N}$

  + Waarde aangeven voor elk $n\in \mathbb{N}$ \frownie

# Functie recursie

  \Large

  + Volg de inductieve definitie

    - waarde voor $0$

    - hoe bereken je de waarde van $n+1$ gegeven de waarde van $n$

  + Stapsgewijs berekening

# Vermenigvuldigen

  + $\mathbf{mult}(n,0)=0$

  + $\mathbf{mult}(n,m+1)=\mathbf{mult}(n,m)+n$

  $$\mathbf{mult}(3,2)=\mathbf{mult}(3,1)+3$$
  $$=(\mathbf{mult}(3,0)+3)+3$$
  $$=(0+3)+3$$
  $$=6$$



# Recusie generaliseerd

  + $X$ een inductieve verzameling

    - beginpunten

    - constructies

  + waarde aangeven voor elke beginpunt

  + aangeven hoe de waarde door constructies wordt beinvloed 
