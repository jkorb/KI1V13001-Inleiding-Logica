---
header-includes:
    - \usepackage{stmaryrd}
...

# {}

\setcounter{framenumber}{29}
\LectureNo{2}
\maketitle


# Agenda

  \Large
  \centering

  ![](img/xkcd-manuals.png){height=50% width=75%}

  \vspace{4ex}

  1. Objecten en definities
  2. Proposities en logica

# Aanwezigheid
 
  \centering
  ![](img/attendance.png){height=50% width=50%}

# Herhaling

  \Large

  \centering

  ![](img/boole.png){height=50% width=50%}

  + We geven een _wiskundig model_ van geldige inferentie.
  
# Waarover gaat wiskunde?

  \centering 
  \Large

  ![](img/wooclap-2.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI2>

# Wiskundige objecten

  \centering

  \Large

  ![](img/mathematical_symbol_fight.png){height=50% width=50%}

  \vspace{4ex}

  + Getallen: $0,1,2,\mathellipsis,\frac{1}{2},\frac{2}{3}, \mathellipsis,\sqrt{2},\pi,e,\mathellipsis,1+3i, \omega,\aleph_{0},\mathellipsis$

  + Functies: $a+b, x\mapsto x^2, exp(x),\sin(x),\mathellipsis$

  + Verzamelingen: $\emptyset,\mathbb{N},\mathbb{Q},\mathbb{R},\mathbb{C},C(\mathbb{C}),\omega,\aleph_0,\mathellipsis$

# Variabelen en constanten

  \Large

  + Stel dat $\underbrace{n}_{\text{variabele}}$ een natuurlijk getal is.

  + $\underbrace{\pi}_{\text{constante}}$ is $3.14159\mathellipsis$ 

  \vspace{4ex}

  Variabelen kunnen verschillende waarden aannemen, constanten staan altijd voor hetzelfde object.

# Definities

  \Large

  + bepalen de betekenis van (nieuwe) constanten---dus objecten.

# Voorbeelden

  \Large

  + $\pi$ is de verhouding tussen de omtrek en de diameter van een cirkel.

  + $a\cdot b$ is gelijk aan $\underbrace{b+\mathellipsis+b}_{a\text{ keer}}$

  + $\mathbb{N}=\{0,1,2,\mathellipsis\}$

# Zijn deze objecten welgedefinieerd?

  \Large

  \centering

  ![](img/wooclap-2.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI2>

# Twee eisen

  \Large

  \centering

  ![](img/math-lady.jpg){height=50% width=50%}

  (1) het object moet bestaan
  (2) het object moet uniek zijn

# Eigenschappen en relaties

  \Large

  + Eigenschappen: even, continue, oneindig, \dots 

  + Relaties: groter dan, de afgeleide van, deelverzameling van, \dots 

  \hspace{4ex}

  Eigenschappen beschrijven hoe dingen zijn, relaties beschrijven hoe dingen zich tot elkaar verhouden.

# Predicaten

  \Large

  Uitdrukkingen, die voor eigenschappen of relaties staan.
  
  + Unitair: "$x$ is even"

  + Binair: "$x$ is groter dan $y$"

  + Tertiair: "$x$ ligt tussen $y$ en $z$"

  + \dots

# Definities 

  \Large

  + bepalen de betekenis van predicaten---dus eigenschappen en relaties.

# Voorbeelden

  \Large

  + Een getal is _even_ desda het een veelvoud is van 2.

  + Een getal $a$ is _kleiner dan_ een getal $b$ desda er een positief getal $c$ bestaat zodanig dat $a+c=b$.

  + Een punt $x$ ligt tussen punten $y$ en $z$ desda de lijn van $y$ naar $z$ door $x$ gaat.

# Zijn deze eigenschappen/relaties welgedefinieerd?

  \Large
  \centering

  ![](img/wooclap-2.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI2>

# Eis

  \Large

  + Een definitie mag niet _circulair_ zijn.


# Proposities

  \Large

  + Zin die ofwel waar of onwaar is.

# Welk van de volgenden zijn proposities?

  \Large

  \centering

  ![](img/wooclap-2.png){height=50% width=50%}

  <https://www.wooclap.com/ILOGI2>


# Logische connectieven 

  \Large

  Vormen nieuwe proposities:

  Naam            connectief
  ---             ---
  negatie         niet-$A$
  conjunctie      $A$ en $B$
  disjunctie      $A$ of $B$
  conditionaal    als $A$, dan $B$
  biconditionaal  $A$ desda $B$

# Logische principes

  \Large

  + Redeneerprincipes

  + Wanneer kun je de waarheid van een propositie uit de waarheid van een andere concluderen?

# De Morgan

  \Large

  \centering

  ![](img/de-morgan.jpg){height=50% width=50%}

  + "Niet-($A$ of $B$)" is equivalent aan "niet-$A$ en niet-$B$"

# De Morgan 

  \centering 

  \Large

  ![](img/not-both.jpg){height=50% width=50%}

  + "Niet-($A$ en $B$)" is equivalent aan "niet-$A$ of niet-$B$"

# Contrapositie

  \Large

  + "Als $A$, dan $B$" is equivalent aan "als niet-$B$, dan niet-$A$"

# Gevalsonderscheiding

  \Large

  + Als: ofwel $A_1$ of \dots of $A_n$. 

  + Dan: bewijs $C$ door te laten zien dat elk $A_i$ tot $C$ leidt. 

# Ongerijmte

  \Large

  + Bewijs $A$ door te laten zien dat niet-$A$ tot een contradictie leidt.

  + Bewijs niet-$A$ door te laten zien dat $A$ tot een contradictie leidt.

# Biconditionaal 

  \Large

  + Om te tonen dat $A$ desda $B$ moet je tonen dat:

    + \Large Als $A$, dan $B$.

    + \Large Als $B$, dan $A$.

# Bewijzen

  \Large

  + Een stapsgewijs argument dat de waarheid van een stelling toont.

  \centering

  \vfill

  ![](img/picsoritdidnt.jpg){height=50% width=50%}



# Voorbeeld

  \Large

  \textbf{Stelling}: Er bestaat geen kleinste positieve reele getal (geen $x>0$ met $x\leq y$ voor all $y>0$).

  _Bewijs_:

  + Stel dat zo'n getal bestaat.

  + Noem het $\epsilon$.

  + Beschouw $\frac{\epsilon}{2}$.

  + Weten: $\frac{\epsilon}{2}>0$ want $\epsilon>0$.

  + Verder: $\frac{\epsilon}{2}<\epsilon$ want $\frac{\epsilon}{2}+\frac{\epsilon}{2}=\epsilon$

  + Dus $\epsilon<\epsilon$ $\lightning$


# Samenvatting

  \Large

  + Definities (objecten): existentie en uniekheid 

  + Definities (eigenschappen + relaties): niet circulair

  + Proposities: waar of onwaar

  + Bewijs: stapsgewijs demonstratie van waarheid
