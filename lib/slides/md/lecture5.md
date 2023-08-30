---
header-includes:
    - \usepackage{wasysym}
    - \usepackage{stmaryrd}
    - \usepackage{venndiagram}
    - \usetikzlibrary{fit,shapes}
    - \usepackage{tikz-qtree}
    - \usepackage[all]{xy}
    - \DeclareMathOperator{\equi}{\mathrel{\reflectbox{$\vDash$}\hspace*{-.5ex}\vDash}}


...

# {}

\setcounter{framenumber}{125}
\LectureNo{5}
\maketitle

# Agenda

  1. Mogelijke situaties en valuaties
  2. Waarheid en recursie
  3. Gevolg en deductietheorema
  4. Waarheidstafels en beslisbaarheid

# Aanwezigheid
 
  \centering
  ![](img/attendance.png){height=50% width=50%}

# Mogelijke situaties

  \centering 
  \Large

  ![](img/wooclap-5.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA5>

# Van situaties naar valuaties

  \Large

  + Situatie bepaalt w'waarden

  + Waarheidswaarden: $1$ (waar), $0$ (onwaar)

  + Bivalentie: toewijzing van w'waarden is een functie

# Compositionaliteit en recursie

  \Large

  + Compositionaliteit: complexe betekenis bepaalt door simpelere betekenis

  + Betekenis=w'waarde

  + Recursie om w'waarde te berekenen.

# Valuatie voor $\mathcal{L}$

  \LARGE
  \centering

  $$v:\mathcal{P}\to\{0,1\}$$

# $v:\{p,q,r\}\to\{0,1\}$

  \begin{minipage}{.49\linewidth}
    \begin{enumerate}[(a)]
    \small
    	\item $v(p)=0, v(q)=0,$ $v(r)=0$
        \item[]
    	\item $v(p)=0, v(q)=0,$ $v(r)=1$
        \item[]
    	\item $v(p)=0, v(q)=1,$ $v(r)=0$
        \item[]
    	\item $v(p)=0, v(q)=1,$ $v(r)=1$
        \item[]

    	\item $v(p)=1, v(q)=0,$ $v(r)=0$
        \item[]
    	\item $v(p)=1, v(q)=0,$ $v(r)=1$
        \item[]
    	\item $v(p)=1, v(q)=1,$ $v(r)=0$
        \item[]
    	\item $v(p)=1, v(q)=1,$ $v(r)=1$
    \end{enumerate}
  \end{minipage}
  \begin{minipage}{.49\linewidth}
  \begin{enumerate}[(a)]
  \setcounter{enumi}{8}
  \small
  	\item $v(p)=1, v(q)=0,$ $v(r)=0$
        \item[]
  	\item $v(p)=1, v(q)=0,$ $v(r)=1$
        \item[]
  	\item $v(p)=1, v(q)=1,$ $v(r)=0$
        \item[]
  	\item $v(p)=1, v(q)=1,$ $v(r)=1$
        \item[]
        \item[]
        \item[]
        \item[]
        \item[]        
        \item[]        
        \item[]        
        \item[]        
  \end{enumerate}
  \end{minipage}

# Valuatie?

  \centering 
  \Large

  ![](img/wooclap-5.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA5>


# Waarheid: recursie

  \Large

  + $\neg\phi$ is waar desda $\phi$ onwaar is

  + $(\phi\land\psi)$ is waar desda $\phi,\phi$ beide waar zijn

  + $(\phi\lor\psi)$ is waar desda tenminste een van $\phi,\phi$ waar is

  + \alert{$(\phi\to\psi)$ is waar desda $\phi$ onwaar of $\psi$ waar is}

  + $(\phi\leftrightarrow\psi)$ is waar desda $\phi,\psi$ beide of waar of onwaar zijn


# Waarheidsfuncties

  \Large

  + Functies van w'waardes naar w'waardes

  + Betekenis van voegtekens:

    - $f_\neg:\{0,1\}\to\{0,1\}$

    - $f_\circ:\{0,1\}^2\to\{0,1\}$ voor $\circ=\land,\lor,\to,\leftrightarrow$

# Negatie: $f_\neg(x)=1-x$

  \centering

  \LARGE
		
  \begin{tabular}{c | c}
    $f_\neg$ & \\\hline
    0 & 1\\
    1 & 0
  \end{tabular}
  \hspace{8ex}
  \large
  \raisebox{-7ex}{\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
      \fillNotA
      \setpostvennhook
      {
      \draw (labelA) ++(150:4ex) node{$X$};
      \draw (venn bottom right) ++(-2.125,0.3) node{$X^c$};
          }%
      \end{venndiagram2sets}	}		

# Conjunctie: $f_\land(x,y)=min(x,y)$

  \centering
  \LARGE

  \begin{tabular}{c | c c}
  
  $f_\land$ & 0 & 1\\\hline
  
  0 & 0 & 0 \\
  
  1 & 0 & 1
  
  \end{tabular}
  \hspace{8ex}
  \large
  \raisebox{-7ex}{\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
      \fillACapB
      \setpostvennhook
      {
      \draw (labelA) ++(150:4ex) node{$X$};
      \draw (labelB) ++(20:5ex) node{$Y$};
      \draw (venn bottom right) ++(-2.125,0.3) node{$X\cap Y$};
          }%
      \end{venndiagram2sets}	}		

# Disjunctie: $f_\land(x,y)=max(x,y)$


  \centering
  \LARGE

  \begin{tabular}{c | c c}
  
  $f_\lor$ & 0 & 1\\\hline
  
  0 & 0 & 1 \\
  
  1 & 1 & 1
  
  \end{tabular}
  \hspace{8ex}
  \large
  \raisebox{-7ex}{\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
      \fillA\fillB
      \setpostvennhook
      {
      \draw (labelA) ++(150:4ex) node{$X$};
      \draw (labelB) ++(20:5ex) node{$Y$};
      \draw (venn bottom right) ++(-2.125,0.3) node{$X\cup Y$};
          }%
      \end{venndiagram2sets}	}		


# Implicatie: $f_\land(x,y)=max(1-x,y)$

  \centering
  \LARGE

  \begin{tabular}{c | c c}
  
  $f_\to$ & 0 & 1\\\hline
  
  0 & 1 & 1 \\
  
  1 & 0 & 1
  
  \end{tabular}
  \hspace{8ex}
  \large
  \raisebox{-7ex}{\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
    \fillNotA
    \fillACapB      
    \setpostvennhook
      {
      \draw (labelA) ++(150:4ex) node{$X$};
      \draw (labelB) ++(20:5ex) node{$Y$};
      \draw (venn bottom right) ++(-2.125,0.3) node{$X\to Y$};
          }%
      \end{venndiagram2sets}	}		


# Bi-implicatie: $f_\leftrightarrow(x,y)=min(max(1-x,y),max(1-y,x))$


  \centering
  \LARGE

  \begin{tabular}{c | c c}
  
  $f_\leftrightarrow$ & 0 & 1\\\hline
  
  0 & 1 & 0 \\
  
  1 & 0 & 1
  
  \end{tabular}
  \hspace{8ex}
  \large
  \raisebox{-7ex}{\begin{venndiagram2sets}[labelA=, labelB=, radius=1cm]%
    \fillNotAorB
    \fillACapB 
    \setpostvennhook
      {
      \draw (labelA) ++(150:4ex) node{$X$};
      \draw (labelB) ++(20:5ex) node{$Y$};
      \draw (venn bottom right) ++(-2.125,0.3) node{$X\leftrightarrow Y$};
          }%
      \end{venndiagram2sets}	}		


# Recursieve berekening van w'waarde

\large 

  Gegeven $v:\mathcal{P}\to\{0,1\}$, definiëren wij $\llbracket\cdot\rrbracket_v:\mathcal{L}\to\{0,1\}$ door: 

  \vspace{4ex}

  \begin{enumerate}[(i)]
	\item  $\llbracket p\rrbracket_v=v(p)$ for all $p\in\mathcal{P}$
	
	\item \begin{enumerate}[(a)]
                \large	
		\item  \large $\llbracket\neg \phi\rrbracket_v=1-\llbracket\phi\rrbracket_v)$
		
		\item  $\llbracket(\phi\land \psi)\rrbracket_v=min(\llbracket\phi\rrbracket_v, \llbracket\psi\rrbracket_v)$
		\item[] $\llbracket(\phi\lor \psi)\rrbracket_v=max(\llbracket\phi\rrbracket_v, \llbracket\psi\rrbracket_v)$		
		\item[] $\llbracket(\phi\to \psi)\rrbracket_v=max(1-\llbracket\phi\rrbracket_v, \llbracket\psi\rrbracket_v)$		
		
		\item[] $\llbracket(\phi\leftrightarrow \psi)\rrbracket_v=\begin{cases} 1 & \text{als } \llbracket\phi\rrbracket_v=\llbracket\psi\rrbracket_v\\0&\text{anders}\end{cases}$		

	\end{enumerate}			
  \end{enumerate}

# Voorbeeld

  Stel dat $v(p)=1,v(q)=0,$ and $v(r)=1$

  \begin{align*}
  \llbracket \neg (p\land (r\lor q))\rrbracket_v &=1-\llbracket (p\land (r\lor q))\rrbracket_v\tag{ii.a}\\
  &=1-min(\llbracket p\rrbracket_v, \llbracket (r\lor q)\rrbracket_v)\tag{ii.b}\\
  &=1-min(\llbracket p\rrbracket_v, max(\llbracket r\rrbracket_v,\llbracket q\rrbracket_v))\tag{ii.b}\\
  &=1-min(v(p), max(v(r), v(q)))\tag{i}\\
  &=1-min(1, max(1,0))\tag{given}\\
  &=1-min(1,1)\\
  &=1-1\\
  &=0
  \end{align*}


# REKENEN!

  \centering 
  \Large

  ![](img/wooclap-5.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA5>


# Definitie van waarheid

  \centering
  \LARGE

  $$v\vDash \phi\Leftrightarrow \llbracket\phi\rrbracket_v=1$$

  ![](img/aint-that-the-truth.jpg){height=50% width=50%}

# Logisch gevolg

  \LARGE
  \centering

  $$v\vDash\Gamma\Leftrightarrow v\vDash\psi\text{, voor alle }\psi\in\Gamma$$

  \vfill

  $$\Gamma\vDash\phi\Leftrightarrow \text{voor alle }v,\text{als }v\vDash\Gamma\text{, dan }v\vDash\phi$$

# Logische waarheid

  \LARGE
  \centering

  $$\vDash\phi \Leftrightarrow \text{ voor all }v, \llbracket\phi\rrbracket_v=1$$


# Ongeldige inferenties

  \centering 
  \Large

  ![](img/wooclap-5.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA5>

# Disjunctief syllogisme 

  \Large

  $$ p\lor q,\neg p\vDash q$$

  1. Stel: (a) $\llbracket p\lor q\rrbracket_v=1$ en (b) $\llbracket\neg p\rrbracket_v=1$

  2. Uit (a): of (i) $\llbracket p\rrbracket_v=1$ of (ii) $\llbracket q\rrbracket_v=1$.

  3. Uit (b): $\llbracket  p\rrbracket_v=0$.

  4. Dit sluit (i) uit want  $\llbracket  p\rrbracket_v=1$ en $\llbracket  p\rrbracket_v=0$ is onmogelijk.

  5. Het volgt dat $\llbracket q\rrbracket_v=1$.

# Bevestiging van het gevolg

  \Large

  $$p\to q,q\nvDash p$$ 

  Beschouw: $v(p)=0, v(q)=1$

  1. $\llbracket p\to q\rrbracket_v=max(\underbrace{1-\llbracket p\rrbracket_v}_{=1-0=1}, \llbracket q\rrbracket_v)=1$

  2. $\llbracket q\rrbracket_v=1$

  3. $\llbracket p\rrbracket_v=0$

# Booleaanse algebra

  \centering

  \scriptsize

  \begin{tabular}{c c l}

  $\phi\lor\phi\equi\phi$ & $\phi\land\phi\equi\phi$ & (Idempotence)\\[2ex]


  $\phi\lor\psi\equi \psi\lor\phi$ & $\phi\land\psi\equi\psi\land\phi$ & 
  (Commutativity)\\[2ex]

  $\phi\lor(\psi\lor \theta)\equi (\phi\lor\psi)\lor \theta$ 

  &

  $\phi\land(\psi\land \theta)\equi (\phi\land\psi)\land \theta$ &
  (Associativity) \\[2ex]


  $\phi\lor(\phi\land\psi)\equi\phi$ & $\phi\land(\phi\lor\psi)\equi\phi$ &
  (Absorption)\\[2ex]

  $\phi\lor (\psi\land\neg\psi)\equi\phi$ & $\phi\land(\psi\lor\neg\psi)\equi\phi$ & (Identity)\\[2ex]

  $\phi\land(\psi\lor\theta)\equi(\phi\land\psi)\lor(\phi\land\theta)$ &
  $\phi\lor(\psi\land\theta)\equi(\phi\lor\psi)\land(\phi\lor\theta)$  &
  (Distributivity)\\[2ex]


  $\vDash\phi\lor\neg\phi$ & $\vDash\neg(\phi\land\neg\phi)$ & (Complements)\\[4ex]

  $\phi\to\psi\equi \neg(\phi\land\psi)$ & $\phi\leftrightarrow\psi\equi (\phi\to\psi)\land(\psi\to\phi)$ & (Definitions) \\[4ex]


  $\neg(\phi\land\psi)\equi \neg\phi\lor\neg\psi$ & $\neg(\phi\lor\psi)\equi\neg\phi\land\neg\psi$ & (De Morgan)\\[4ex]

  \end{tabular}


# Deductie theorema

  \large

  $$\Gamma,\phi\vDash\psi\Leftrightarrow \Gamma\vDash\phi\to\psi$$

  *Bewijs* ($\Rightarrow$):

  1. Stel $\Gamma,\phi\vDash\psi$.

  2. Stel verder $\Gamma\nvDash\phi\to\psi$ (ongerijmte)

  3. Dus bestaat $v$, met $v\vDash\Gamma$ maar $v\nvDash\phi\to\psi$

  4. Dus:

      i. $\llbracket\theta\rrbracket_v=1$ voor alle $\theta\in\Gamma$
      ii. $\llbracket \phi\rrbracket_v=1$
      iii. $\llbracket\psi\rrbracket_v=0$.

  5. Maar want $\Gamma,\phi\vDash\psi$, als i. en ii., dan $\llbracket\psi\rrbracket_v=1$.

  6. $\lightning$


# Waarheidstafels

  \Large

  + **Doel**: Inferentie op validiteit toetsen

  + Probeer een tegenvoorbeeld te vinden

  + Deductietheorema: $\Gamma\vDash\phi$ desda $\vDash\bigwedge\Gamma\to\phi$
 
  + Doorloop *alle* relevante valuaties!

  \centering

  ![](img/all-of-them.jpg){height=50% width=50%}

# Voorbeeld: $p\lor q,\neg(p\land q)\nvDash r$

  \centering

  \tiny

  \begin{tikzpicture}
  \Tree [.$(((p\lor q)\land \neg (p\land q))\to r)$ [.$((p\lor q)\land \neg (p\land q))$ [.$(p\lor q)$ [.$p$ ] [.$q$ ] ] [.$\neg(p\land q)$ [.$(p\land q)$ [.$p$ ] [.$q$ ] ] ] ] [.$r$ ] ]
  \end{tikzpicture}


  \begin{tabular}{c c c | c | c | c | c | c }
  $p$ & $q$  & r & $(p\lor q)$ & $(p\land q)$ &  $\neg (p\land q)$ & $((p\lor q)\land \neg(p\land q))$ & $((p\lor q)\land \neg(p\land q))\to r$ \\\hline
  
  1 & 1 & 1 & 1 &1&0&  0 & 1\\
  
  1 & 1 & 0 & 1 &1&0&  0& 1\\
  
  1 & 0 & 1 & 1 &0&1& 1& 1\\
  
  1 & 0 & 0  & 1 &0& 1&1& 0\\
  
  0 & 1 &  1 & 1 &0& 1 &1 & 1\\
  
  0 & 1 & 0 & 1 &0&1& 1 & 0\\
  
  0 & 0 & 1 & 0 &0& 1 &0& 1\\
  
  0 & 0 & 0 & 0 &0&1 &0& 1
  
  \end{tabular}

# Beslisbaarheid

  \Large

  + Algoritme: 

    - \large begintoestand

    - eenduidige instructies

    - einddoel

  + **Theorema**. *Beslisbaarheid van de propositielogica*. Er bestaat een
    algoritme die in eindelijk veel stappen bepaalt of een inferentie geldig is
    of niet.

  + *Bewijs*. Waarheidstafels!

# Samenvatting

  + Valuaties zijn modellen van mogelijke situaties.

  + Gebruik recursie om w'waarde te bereken.

  + Gevolg is waarheidsbehoud over alle valuaties.

  + Logische waarheid is waarheid onder alle valuaties.
