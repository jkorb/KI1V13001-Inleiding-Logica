---
header-includes:
    - \usepackage{wasysym}
    - \usepackage{proof}
    - \usepackage{prooftrees}
    - \usepackage{stmaryrd}
    - \usepackage{venndiagram}
    - \usetikzlibrary{fit,shapes}
    - \usepackage{tikz-qtree}
    - \usepackage[all]{xy}
    - \DeclareMathOperator{\equi}{\mathrel{\reflectbox{$\vDash$}\hspace*{-.5ex}\vDash}}
    - \DeclareMathOperator{\equip}{\mathrel{\reflectbox{$\vdash$}\hspace*{-.5ex}\vdash}}
    - \usepackage{pifont}
    - \newcommand{\cmark}{\ding{51}}
    - \newcommand{\xmark}{\ding{55}}
...

# {}

  \LectureNo{7}
  \maketitle

# Agenda

  \setcounter{framenumber}{151}

  \Large

  1. Bewijstheorie en KI
  2. Vervulbaarheid en gevolg
  3. Tableaux

# Aanwezigheid
 
  \centering
  ![](img/attendance.png){height=50% width=50%}

# Deductieve systemen

  \Large
  
  + Inferentie*regels*: 

    + \large formules uit formules afleiden

    + desda 

  + Syntactische benadering van geldigheid

  
# Succesverhaal

  \centering 
  \Large

  \begin{tabular}{c c}

  \includegraphics[height=100px]{img/voevodsky.jpg}

  &

  \includegraphics[height=100px]{img/coq-screenshot.png}\\

  Vladimir Voevodsky & Coq

  \end{tabular}

# Hilbert-systemen

  \large
  \centering

  ![](img/hilbert.jpg){height=50% width=50%}

  1. $\phi\to (\psi\to \phi)$
  2. $(\phi\to (\psi\to \chi))\to((\phi\to \psi)\to (\phi\to \chi))$
  3. $(\neg \phi\to \neg \psi)\to (\psi\to\phi)$				

  
  + (MP) $\phi,\phi\to\psi\vdash\psi$

  + (Def) 
     - $(\phi\land\psi)\equip\neg(\phi\to\neg\psi)$
     - $(\phi\lor\psi)\equip(\neg\phi\to\psi)$
     - $(\phi\leftrightarrow\psi)\equip((\phi\to\psi)\land(\psi\to\phi))$ 
 
# $\vdash p\to p$

  1. $((p \to ((p \to p) \to p)) \to ((p \to (p \to p)) \to (p \to p)))$ 
  
   \ \hfill (Axioma 2. met $\phi=p, \psi=(p\to p),$ en $\chi=p$)
  
  2. $(p \to ((p \to p) \to p))$ 

  \ \hfill (Axioma 1. met $\phi=p$ en $\psi=(p\to p)$)
  
  3. $((p \to (p \to p)) \to (p \to p))$ \hfill (Uit 1. en 2. via MP.)
  
  4. $(p \to (p \to p))$ \hfill (Axioma 1. met $\phi=p$ en $\psi=p$.)
  
  5. $(p \to p)$\hfill (Uit 3. en 4. via MP.)


# Sequentiële calculus

  \large
  \centering

  $$\phi_1\land\mathellipsis\land\phi_n\vDash\psi_1\lor\mathellipsis\lor\psi_m\leadsto \phi_1,\mathellipsis,\phi_n\Rightarrow\psi_1,\mathellipsis, \psi_m$$

  \tiny

  \begin{tabular}{c c c}
    \infer[Weak L]{\Gamma\cup\{\phi\}\Rightarrow \Delta}{\Gamma\Rightarrow\Delta} & \infer[Weak R]{\Gamma\Rightarrow \Delta\cup\{\phi\}}{\Gamma\Rightarrow\Delta}\\[2ex]
			
    \infer[Cut]{\Gamma\cup\Gamma'\Rightarrow\Delta,\Delta'}{\Gamma\Rightarrow \{\phi\}\cup \Delta & \{\phi\}\cup\Gamma'\Rightarrow\Delta'}\\[2ex]
		
			
    \infer[\neg L]{\Gamma\cup\{\neg\phi\}\Rightarrow\Delta}{\Gamma\Rightarrow\Delta\cup\{\phi\}} & \infer[\neg R]{\Gamma\Rightarrow\Delta\cup\{\neg\phi\}}{\Gamma\cup\{\phi\}\Rightarrow\Delta} \\[2ex]
			
    \infer[\land L]{\Gamma\cup\{\phi\land \psi\}\Rightarrow \Delta}{\Gamma\cup\{\phi,\psi\}\Rightarrow \Delta} & \infer[\land R]{\Gamma\cup\Gamma'\Rightarrow \{\phi\land \psi\}\cup\Delta\cup\Delta'}{\Gamma\Rightarrow \{\phi\}\cup\Delta & \Gamma'\Rightarrow \{\psi\}\cup\Delta'}\\[2ex]
				
    \infer[\lor L]{\Gamma\cup\Gamma'\cup \{\phi\lor \psi\}\Rightarrow\Delta\cup\Delta'}{\Gamma\cup \{\phi\}\Rightarrow\Delta & \Gamma'\cup\{\psi\}\Rightarrow \Delta'} & \infer[\lor R]{\Gamma\Rightarrow \Delta\cup\{\phi\lor \psi\}}{\Gamma\Rightarrow \Delta\cup\{\phi,\psi\}}\\[2ex]
				 
    \infer[\to L]{\Gamma\cup\Gamma'\cup\{\phi\to\psi\}\Rightarrow\Delta\cup\Delta'}{\Gamma\Rightarrow \{\phi\}\cup\Delta' & \Gamma'\cup\{\psi\}\Rightarrow \Delta'} & \infer[\to R]{\Gamma\Rightarrow \{\phi\to\psi\}\cup\Delta}{\Gamma\cup\{\phi\}\Rightarrow\{\psi\}\cup\Delta}
			
  \end{tabular}

# $\vdash \neg(p\lor q)\Rightarrow \neg p \land\neg q$ 

  \centering

  ![](img/gentzen.jpg){height=50% width=50%}

  \vspace{2ex}

  \Large

  \begin{tabular}{c}
  \infer[\land R]{\neg(p\lor q)\Rightarrow \neg p\land \neg q}{\infer[\neg R]{\neg(p\lor q)\Rightarrow \neg p}{\infer[\neg L]{\neg (p\lor q),p\Rightarrow \emptyset}{\infer[\lor R]{p\Rightarrow p\lor q}{\infer[Weak R]{p\Rightarrow p,q}{p\Rightarrow p}}}} & \infer[\neg R]{\neg(p\lor q)\Rightarrow \neg q}{\infer[\neg L]{\neg (p\lor q),q\Rightarrow \emptyset}{\infer[\lor R]{q\Rightarrow p\lor q}{\infer[Weak R]{q\Rightarrow p,q}{q\Rightarrow q}}}}}
  \end{tabular}


# Natuurlijke deductie

  \centering

  \begin{tabular}{c c c}
				
    \infer[EFQ]{\psi}{\phi & \neg \phi} & & \infer[Biv]{\psi}{\infer*{\psi}{[\phi]} & \infer*{\psi}{[\neg\phi]}}\\[1ex]
				
    \infer[\land I]{\phi\land \psi}{\phi & \psi} & \infer[\land E_1]{\phi}{\phi\land \psi} & \infer[\land E_2]{\psi}{\phi\land \psi}\\[1ex]
				
    \infer[\lor I_1]{\phi\lor\psi}{\phi} & \infer[\lor I_2]{\phi\lor\psi}{\psi} & \infer[\lor E]{\theta}{\phi\lor\psi & \infer*{\theta}{[\phi]} & \infer*{\theta}{[\psi]}}\\[1ex]

    \infer[\to I]{\phi\to \psi}{\infer*{\psi}{[\phi]}} & & \infer[\to E]{\psi}{\phi\to\psi & \phi}

  \end{tabular}

# $p\lor q,\neg p\vdash q$

  \centering 

  \Large

  ![](img/gentzen.jpg){height=50% width=50%}

  \vspace{4ex}

  \begin{tabular}{c}
    \infer[\lor E, 1]{q}{p\lor q & [q] &\infer[EFQ]{q}{[p] & \neg q}}
  \end{tabular}

# Favorieten?

 \centering 
  \Large

  ![](img/wooclap-6.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA6>


# Vervulbaarheid

  \Large

  + **Definitie**. $\Gamma$ is vervulbaar desda een $v$ bestaat met $v\vDash\Gamma$

# Vervulbaar?

  \centering 
  \Large

  ![](img/wooclap-6.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA6>

# I Can't Get No Satisfaction

  \Large

  \begin{center}
    \includegraphics[width=100px]{img/satisfaction.jpg}
  \end{center}

  De volgenden zijn equivalent:

  1. $\Gamma\vDash\phi$

  2. $\Gamma\cup\{\neg\phi\}$ is niet vervulbaar

# Bewijs ($\Rightarrow$)

  \Large

  1. Stel $\Gamma\vDash\phi$.

  2. Stel verder dat $\Gamma\cup\{\neg\phi\}$ vervulbaar is (ongerijmte)

  3. Dan bestaat $v$ met (a) $v\vDash\Gamma$ en (b) $v\vDash\neg\phi$.

  4. Uit (b): $v\nvDash\phi$

  5. Uit (a) en $\Gamma\vDash\phi$: $v\vDash\phi$

  6. $\lightning$

# Tableaux

  \Large

  + Toetsen of:

    - $p\lor q,\neg p\vDash q$

    - $p\land q,\neg p\lor q\vDash q\land\neg\neg r$

  + Stap 1: initiële lijst

  \centering

  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [p\lor q, grouped [\neg p, grouped [\neg q, grouped] ] ]
  \end{prooftree}

  \begin{prooftree}
     {line numbering=false,
      line no sep= 2cm,
      for tree={s sep'=5mm},
      single branches=true,
      close with=\xmark}
      [p\land q, grouped 
        [ \neg p\lor q, grouped 
          [\neg (q\land \neg \neg r), grouped ] ] ]
  \end{prooftree}

# Stap 2. Regels toepassen

  \small
  \centering

  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
      [\neg\neg \phi [\phi ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\phi\land\psi [\phi [\psi ] ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\neg (\phi\land\psi) [\neg \phi ] [\neg \psi ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\phi\lor\psi [\phi ] [\psi ] ]
  \end{prooftree}
  \begin{prooftree}
  {
  line numbering=false,
  line no sep= 2cm,
  for tree={s sep'=5mm},
  single branches=true,
  close with=\xmark
  }
  [\neg(\phi\lor\psi) [\neg\phi [\neg\psi ] ] ]
  \end{prooftree}

  \vspace{2ex}

  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\neg (\phi\to\psi) [\phi [\neg \psi ] ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\phi\to\psi [\neg \phi ] [\psi ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\phi\leftrightarrow \psi [\phi [\psi] ] [\neg \phi [\neg \psi] ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [\neg(\phi\leftrightarrow \psi) [\phi [\neg \psi] ] [\neg \phi [ \psi] ] ]
  \end{prooftree}

# Stap 3. Resultaten bekijken

  \centering

  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 2cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [p\lor q, grouped [\neg p, grouped [\neg q, grouped [p, close] [q, close] ] ] ]
  \end{prooftree}

  \vspace{1ex}

  ![](img/happiness.jpg){height=50% width=50%}

# Stap 3. Resultaten bekijken

  \centering

  \small

  \begin{minipage}{.45\linewidth}
  \begin{prooftree}
    {
    line numbering=false,
    line no sep= 1cm,
    for tree={s sep'=5mm},
    single branches=true,
    close with=\xmark
    }
    [p\land q, grouped [ \neg p\lor q, grouped [\neg (q\land \neg\neg r), grouped [p [q [\neg p [\neg q, close] [\neg\neg\neg r [\neg r, close] ] ] [q [\neg q, close] [\neg\neg\neg r [\neg r ] ] ] ] ] ] ] ]
  \end{prooftree}
  \end{minipage}
  \qquad
  \begin{minipage}{.45\linewidth}
  \includegraphics[width=5cm]{img/crying.jpg}
  \end{minipage}

# Open/Afgesloten

 \centering 
  \Large

  ![](img/wooclap-6.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA6>


# Geassocieerde valuatie

  \Large

  Stel dat $B$ open is:

  $$v_B(p):=\begin{cases} 1 & \text{als }p\in B\\ 0 & \text{als }p\notin B\end{cases}$$


  **Lemma**: $v_B\vDash\phi$ als $\phi\in B$
  
# Voorbeeld 
  
  \centering

  \small
  \begin{prooftree}
  {
  line numbering=false,
  line no sep= 2cm,
  for tree={s sep'=5mm},
  single branches=true,
  close with=\xmark
  }
  [p\land q, grouped [ \neg p\lor q, grouped [\neg (q\land \neg\neg r), grouped [p [q [\neg p [\neg q, close] [\neg\neg\neg r [\neg r, close] ] ] [q [\neg q, close] [\neg\neg\neg r [\neg r ] ] ] ] ] ] ] ]
  \end{prooftree}

  $v_B$ is gegeven door $v_B(p)=1, v_B(q)=1, v_B(r)=0$

# Metatheorie

  \Large

  + $\Gamma\vdash\phi$ als het tableau afgesloten is

  + $\Gamma\nvdash\phi$ anders

  + **Theorema** (Correctheid):
      
   $$\text{Als }\Gamma\vdash\phi\text{, dan }\Gamma\vDash\phi$$

  + **Theorema** (Volledigheid):
   
   $$\text{Als }\Gamma\vDash\phi\text{, dan }\Gamma\vdash\phi$$

# De Morgan 1

  \begin{center}
    \begin{prooftree}
    {
    proof statement format={centered},
    to prove={\neg p\lor \neg q\vdash \neg (p\land q)},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [\neg p\lor \neg q, grouped [\neg \neg (p\land q), grouped [p\land q [\neg p [p [q, close] ]] [\neg q [p [q, close] ]]] ] ]
    \end{prooftree}
    \begin{prooftree}
    {
    proof statement format={centered},
    to prove={\neg (p\land q)\vdash \neg p\lor \neg q},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [\neg (p\land q), grouped [\neg(\neg p\lor \neg q), grouped [\neg\neg p [\neg\neg q [\neg p [p [q, close ] ] ] [\neg q [p [q, close]] ]] ]]]
    \end{prooftree}
  \end{center}

# De Morgan 2

  \centering

  \begin{prooftree}
    {
    proof statement format={centered},
    to prove={\neg p\land \neg q\vdash \neg (p\lor q)},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [\neg p\land \neg q, grouped [\neg \neg (p\lor q), grouped [p\lor q [ p [\neg p [\neg q, close]]] [q [\neg p [\neg q, close] ]]] ] ]
  \end{prooftree}
  \begin{prooftree}
    {
    proof statement format={centered},
    to prove={\neg (p\lor q)\vdash \neg p\land \neg q},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [\neg (p\lor q), grouped [\neg(\neg p\land \neg q), grouped [\neg p [\neg q [\neg \neg p [p, close]] [\neg \neg q [q, close]] ]] ]]
  \end{prooftree}

# Wet van de uitgesloten derde

  \centering

  \begin{prooftree}
    {
    proof statement format={centered},
    to prove={\vdash p\lor \neg p},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [\neg(p\lor \neg p) [\neg p [\neg\neg p [p, close]] ] ]
  \end{prooftree}

# Biimplicatie

  \centering

  \begin{prooftree}
  {
  proof statement format={centered},
  to prove={\vdash (\neg p\lor q)\leftrightarrow (p\to q)},
  line numbering=false,
  for tree={s sep'=10mm},
  single branches=true,
  close with=\xmark
  }
  [\neg((\neg p\lor q)\leftrightarrow (p\to q)) [(\neg p\lor q) [\neg  (p\to q) [p [\neg q [\neg p, close] [q, close]] ]  ]] [\neg(\neg p\lor q) [(p\to q) [\neg\neg p [\neg q [\neg p [p, close ] ] [q [p, close ] ] ]] ] ] ]
  \end{prooftree}

# Transitiviteit

  \centering
  
  \begin{prooftree}
    {
    proof statement format={centered},
    to prove={(p\to q), (q\to r)\vdash (p\to r)},
    line numbering=false,
    for tree={s sep'=10mm},
    single branches=true,
    close with=\xmark
    }
    [p\to q, grouped [q\to r, grouped [\neg (p\to r), grouped [p [\neg r [\neg p [\neg q, close] [r, close] ] [q [\neg q, close] [r, close]] ] ]] ] ]
  \end{prooftree}

#

  \centering

  \includegraphics[height=150px]{img/more.png}

# Distributiviteit

  \scriptsize
  \centering
  \begin{prooftree}
  {
  proof statement format={centered},
  to prove={(p\lor q)\land r\vdash (p\land r)\lor (q\land r)},
  line numbering=false,
  for tree={s sep'=10mm},
  single branches=true,
  close with=\xmark
  }
  [(p\lor q)\land r, grouped [\neg((p\land r)\lor (q\land r)), grouped [p\lor q [r [\neg (p\land r) [\neg (q\land r) [p [\neg p [\neg q,close] [\neg r, close]] [\neg r [\neg q,close] [\neg r, close]]] [q [\neg p [\neg q,close] [\neg r, close]] [\neg r [\neg q,close] [\neg r, close]]]]]]]]]
  \end{prooftree}


# Bevestiging van het gevolg

  \centering

  \begin{prooftree}
  {
  proof statement format={centered},
  to prove={p\to q, q\nvdash p},
  line numbering=false,
  for tree={s sep'=10mm},
  single branches=true,
  close with=\xmark
  }
  [p\to q, grouped [q, grouped [\neg p, grouped [\neg p] [q]]]]
  \end{prooftree}

  Tegenmodel: $v_B(q)=1, v_B(p)=0$.

# Disjunctie

  \centering

  \begin{prooftree}
  {
  proof statement format={centered},
  to prove={p\lor q, p\nvdash \neg q},
  line numbering=false,
  for tree={s sep'=10mm},
  single branches=true,
  close with=\xmark
  }
  [p\lor q, grouped [p, grouped [\neg\neg q, grouped [q [p] [q]] ]]]
  \end{prooftree}

  Tegenmodel: $v_B(q)=1, v_B(p)=1$.

# Samenvatting

  + Er zijn *heel* veel typen van bewijssystemen

  + Tableaux zijn gebaseerd op ICGNS

  + Open tableaux geven een tegenvoorbeeld


