---
header-includes:
    - \usepackage{wasysym}
    - \usepackage{stmaryrd}
    - \usepackage{venndiagram}
    - \usetikzlibrary{fit,shapes}
    - \usepackage{tikz-qtree}
...


# {}

\LectureNo{4}
\maketitle

# Agenda

  \setcounter{framenumber}{91}

  1. Taal van propositielogica
  2. Vertaling
  3. Recursieve over formules
  4. Ontleedbomen \& Unieke leesbaarheid
  5. Inductie over formules

# Aanwezigheid
 
  \centering
  ![](img/attendance.png){height=50% width=50%}

# Geldigheid

  \centering 
  \Large

  ![](img/wooclap-4.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI4>

# Propositielogica

  \Large

  + Relevant:

    - \Large niet, en, of, als \dots, dan \dots, desda.

  + Irrelevant:

    - \Large concrete zinnen!

# Logische vorm

  \centering

  \Large

  $\text{Als }A\text{, dan }B$

  $A$

  \rule{5cm}{0.4pt}

  $\text{\bf Dus: }B$

# Formele talen

  \Large
  
  + Wiskundig model van taal

  + Abstraheren van logisch irrelevante dingen

  + $\Rightarrow$ `Formele en natuurlijke talen` (KI2V21001, blok 3)

  + Voor ons: wiskundig model van logische vorm.

# Formele talen

  \Large

  + Alfabet: $\Sigma$

  + Grammatica: $G$

  + Taal: $\mathcal{L}\subseteq \Sigma^{\ast}$ 

# $\Sigma$

  \Large

  + Proposietieletters: $\mathcal{P}=\{p,q,r,\mathellipsis\}$

  + Voegtekens:

  \begin{center}
  	\begin{tabular}{c | c | c}
  	  	
  	$\neg$            & Negatie      & niet\\
  	$\land$           & Conjunctie   & en\\
  	$\lor$            & Disjunctie   & of\\
  	$\to$             & Implicatie   & als \dots, dan \dots\\
  	$\leftrightarrow$ & Biimplicatie & desda
  	\end{tabular}
  \end{center}

  + Haakjes: $(,)$

# $G$

  \large

  $\mathcal{L}$ is de kleinste verzameling $X$ zodanig dat:

  + $\mathcal{P}\subseteq X$

  + als $\phi\in X$, dan $\neg\phi\in X$

  + als $\phi,\psi\in X$, dan $(\phi\land\psi), (\phi\lor\psi),(\phi\to\psi),(\phi\leftrightarrow\psi)\in X$

# Zijn ze formules?

  \centering 
  \Large

  ![](img/wooclap-4.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI4>

# Afsluiten

  \centering 
  \Large

  ![](img/xkcd-paren.png){height=50% width=75%}

# Vertaling

  Representatie van natuurlijke taal in formele taal.
  
  \centering

  \vfill

  \begin{tabular}{p{.5\linewidth} c l}
  
    De straat is niet nat \alert{maar} droog. & $\leadsto$ & $(\neg p\alert{\land} q)$ \\[2ex]
  
    De kat zit \alert{ofwel} in de rechter \alert{of} in de linker box. & $\leadsto$ & $((p\alert{\lor} q)\alert{\land \neg(p\land q)})$\\[2ex] 
  
    \alert{Alleen} als je slaagt voor het tentamen, \alert{dan} halt je de cursus. & $\leadsto$ & $(\alert{q}\to \alert{p})$
  
  \end{tabular}

# Vertaling omkeren

  \centering 
  \Large

  ![](img/wooclap-4.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI4>

# Recursie over $\mathcal{L}$

  \Large

  Geef:

  + de waarde voor alle $\mathcal{P}$s

  + de waarde van $\neg\phi,(\phi\circ\psi)$ gegeven de waarde van $\phi$ en $\psi$

  \centering

  ![](img/recursion.jpg){height=50% width=65%}

# Complexiteit

  \Large
  \centering

  + $c(p)=0$ voor $p\in\mathcal{P}$

  + $c(\neg\phi)=c(\phi)+1$

  + $c((\phi\circ\psi))=max^\dagger(c(\phi),c(\psi))+1$

  \large$\dagger$: $max(n,m)=\begin{cases}n & \text{if }n\geq m \\ m & \text{otherwise}\end{cases}$

  ![](img/complexity.jpg){height=50% width=50%}

# Recursief berekenen

  \centering 
  \Large

  ![](img/wooclap-4.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI4>

# Formules lezen

  \centering
  \Large

  \begin{tabular}{c c c}
  		\begin{tikzpicture}
  		{\Tree [.$p\land q\lor r$ [.$p$ ] [.$q\lor r$ [.$q$ ] [.$r$ ] ] ]}
  		\end{tikzpicture}
  
  		& 
  		
  		\qquad \raisebox{7.5ex}{vs.} \qquad 
  				\begin{tikzpicture}
  
  		{\Tree [.$p\land q\lor r$ [.$p\land q$ [.$p$ ] [.$q$ ] ] [.$r$ ] ]}
  		\end{tikzpicture}
  
  \end{tabular}
  
  \vfil
  
  + Koffie en ofwel toast of ei

  + Ofwel koffie en toast of (alleen) ei

# Grafen en bomen

  \centering

  ![](img/xkcd-tree.png){height=50% width=50%}

  + Kerstballen: knopen, punten
  + Verlichting: zijden, lijnen, kanten, bogen, takken
  + Geele bal: wortel
  + Kinderen en ouders
  + Bladeren
  + Pad
  + Geen cirkelpaden!

# Ontleedbomen

  \centering
  \begin{tikzpicture}
  
  \node at (0,1) {$T(p)=$};
  \node at (1.5,1) {\Tree [.$p$ ]};
  \node at (4,1) {for $p\in\mathcal{P}$};
  
  \node at (0,-1) {$T(\neg \phi)=$};
  \node at (2,-1) {\Tree [.$\neg \phi$ [.$T(\phi)$ ] ]};
  
  \node at (0,-3) {$T((\phi\circ\psi))=$};
  \node at (2,-3) {\Tree [.$(\phi\circ\psi)$ [.$T(\phi)$ ] [.$T(\psi)$ ] ]};
  \node at (5,-3) {for $\circ=\land,\lor,\to,\leftrightarrow$};
  \end{tikzpicture}

# Voorbeeld

  \Large

  \centering

  $T(((p\land (p\to q)) \to \neg q))=$

  \vfill

  \begin{tikzpicture}
  \Tree [.$((p\land (p\to q))\to \neg q)$ [.$(p\land (p\to q))$ [.$p$ ] [.$(p\to q)$ [.$p$ ] [.$q$ ] ] ] [.$\neg q$ [.$q$ ] ] ]
  \end{tikzpicture}

  Hoofd-operator: $\to$

# Unieke leesbaarheid

  \Large
  **Theorema**: Voor elk formule $\phi$ bestaat een unieke ontleedboom. 

  \vfill

  \centering

  ![](img/unique.jpg){height=50% width=50%}

# Algoritme \smiley

  \centering

  \begin{tikzpicture}
  \Tree[.$(p\lor (q\lor (r\leftrightarrow (\neg s\land t))))\checkmark$ [.{$p\checkmark$} ] [.{$(q\lor (r\leftrightarrow (\neg s\land t)))\checkmark$} [.{$q\checkmark$} ] [.{$(r\leftrightarrow (\neg s\land t))\checkmark$} [.$r\checkmark$ ] [.$(\neg s\land t)\checkmark$ [.$\neg s\checkmark$ [.$s\checkmark$ ] ] [.$t\checkmark$ ] ] ] ] ]
  \end{tikzpicture}

# Algoritme \frownie

  \centering

  \begin{tabular}{c c c}
				\Tree [.$((p\land q)\to \neg(r))\checkmark$ [.$(p\land q)\checkmark$ [.$p\checkmark$ ] [.$q\checkmark$ ] ] [.$\neg(r)\checkmark$ [.$(r)\frownie$ ] ] ] 
			
			& \qquad &
			
				\Tree [.${\neg\neg(p(\leftrightarrow) q)}\checkmark$ [.${\neg(p(\leftrightarrow) q)}\checkmark$ [.${(p(\leftrightarrow) q)}\checkmark$ [.$(p(\frownie$ ] [.$)q)\frownie$ ] ] ] ]
  \end{tabular}
	
# Inductie over $\mathcal{L}$

  \Large

  Bewijs dat alle $\phi\in\mathcal{L}$ eigenschap $\Phi(x)$ hebben door:

  + te bewijzen dat $\Phi(p)$ voor alle $p\in \mathcal{P}$

  + te bewijzen dat:
    
    - \large $\Phi(\phi)\Rightarrow\Phi(\neg \phi)$

    - \large $\Phi(\phi)~\&~\Phi(\psi)\Rightarrow\Phi((\phi\circ\psi))$, voor $\circ=\land,\lor,\to,\leftrightarrow$

# Voorbeeld

  \Large


  **Definitie** De hoogte van een $T(\phi)$ is de langste pad van de woortel naar een blad. Notatie: $h_{T(\phi)}$.

  **Stelling**: $h_{T(\phi)}=c(\phi)$

# Bewijs met inductie

  + $T(p)=p$ heeft hoogte $0=c(p)$ \checkmark

  + Stel dat $h_{T(\phi)}=c(\phi)$ (I.V.). 

  + Beschouw:

  \begin{center}

  \begin{tikzpicture}
  \node at (0,-1) {$T(\neg \phi)=$};
  \node at (2,-1) {\Tree [.$\neg \phi$ [.$T(\phi)$ ] ]};
  \end{tikzpicture}

  \end{center}

  + Dus: $h_{T(\neg\phi)}=h_{T(\phi)}+1$

  + Tegelijkertijd: $c(\neg\phi)=c(\phi)+1$.

  + Dus: 
  $$h_{T(\neg\phi)}=\underbrace{h_{T(\phi)}}_{=c(\phi)~\text{I.V.}}+1=c(\phi)+1=c(\neg\phi)\checkmark$$

# Vz.

  + Stel verder dat $h_{T(\phi)}=c(\phi)$ en $h_{T(\psi)}=c(\psi)$ (I.V.). 

  + Beschouw:

  \begin{center}
  \begin{tikzpicture}
  
  \node at (0,-3) {$T((\phi\circ\psi))=$};
  \node at (2,-3) {\Tree [.$(\phi\circ\psi)$ [.$T(\phi)$ ] [.$T(\psi)$ ] ]};
  \node at (5,-3) {voor $\circ=\land,\lor,\to,\leftrightarrow$};
  \end{tikzpicture}
  \end{center}

  + Dus: $h_{T(\phi\circ\psi)}=max(h_{T(\phi)},h_{T(\psi)})+1$

  + Verder: $c(\phi\circ\psi)=max(c(\phi),c(\psi))+1$

  + Dus:
  $$h_{T(\phi\circ\psi)}=max(\underbrace{h_{T(\phi)}}_{=c(\phi),\text{ I.V.}},\underbrace{h_{T(\psi)}}_{=c(\psi),\text{ I.V.}})+1=c(\phi\circ\psi)$$

# Notationele conventies

  + Buitenste haakjes weglaten
  $$p\lor q\approx (p\lor q)$$

  + Geen haakjes voor lange conjuncties/disjuncties:
  $$p_1\land p_2\land p_3 \land p_4\approx (p_1\land (p_2\land (p_3\land p_4)))$$

  + Sterkte:
  $${\neg} <{\land}={\lor}<{\to}<{\leftrightarrow}$$

  \vfil

 \begin{center}
		
		\begin{tabular}{c c c}
		\begin{tikzpicture}
		{\Tree [.$p\land q\to r$ [.$p$ ] [.$q\to r$ [.$q$ ] [.$r$ ] ] ]}
		\end{tikzpicture}

		& 
		
		\qquad \raisebox{7.5ex}{vs.} \qquad 
				\begin{tikzpicture}

		\alert{\Tree [.$p\land q\to r$ [.$p\land q$ [.$p$ ] [.$q$ ] ] [.$r$ ] ]}
		\end{tikzpicture}

		\end{tabular}
		\end{center}


# Conventionele formules

  \centering 
  \Large

  ![](img/wooclap-4.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI4>

# Samenvatting

  + Formele taal: abstractie van logisch irrelevante dingen

  + Formalizatie: vertaling naar formele taal

  + Recursie: complexe waarde door simpelere waarden berekenen

  + Inductie: stellingen bewijzen door structuur van formule te volgen

