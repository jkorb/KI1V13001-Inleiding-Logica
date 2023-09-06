# {}

\setcounter{framenumber}{1}
\LectureNo{1}
\maketitle

# Agenda

  0. Cursushandleiding
  1. Introductie

# Aanwezigheid

  \centering
  ![](img/attendance.png){height=50% width=50%}

# Cursusmateriaal

  \centering

  ![](img/Octocat.png){ width=50% height=50% }

  [https://github.com/UtrechtUniversity/KI1V13001-Inleiding-Logica](https://github.com/UtrechtUniversity/KI1V13001-Inleiding-Logica)

# Gebruiksaanwijzing

  \centering
  ![](img/onduidelijk.jpg){ width=50% height=50% }

  + Cursushandleiding: informatie
  + Slides: best of
  + Dictaat: the full story

# Grote verwachtingen

  Ik verwacht van jullie:

  + Het hfdst. _voor_ het HC te lezen
  + De opdrachten te maken
  + Te doen aan zelfstudie

# Docenten

  + Geven HCs
  + Maken tentamens en kijken ze naar
  + Geven cijfers

# SAs

  + Zijn je vriend en helper
  + Beantwoorden vragen
  + Geven constructieve feedback

# Tentamens en cijfers

  + Tussentoets (meerkeuze, digitaal):
  + Eindtoets (bewijzen, papier):

  $$\text{cijfer}_{\text{cursus}} = 0.5\times \text{cijfer}_{\text{tussentoets}} + 0.5\times \text{cijfer}_{\text{eindtoets}}$$

# Vragen, ziekmelding, etc.

  \centering
  \Large

  [inleiding.logica@uu.nl](mailto:inleiding.logica@uu.nl)

# Waarover gaat logica?

  \centering
  \LARGE

  ![](img/wooclap-1.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA1>

# Logica

  \centering

  ![](img/schola-logicae.jpg){width=75% height=75%}


  + Logica is de studie van *geldige* (2) *inferentie* (1)

# Inferentie (1)

  (1) Als het regent, dan is de straat nat. Het regent. Dus: de straat is nat.

  (2) Als de zon schijnt, dan is de straat nat. De zon schijnt. Dus: de straat is nat.

  (3) De straat is nat, en als het regent dan is de straat nat. Dus: het regent!

# Inferentie (1)

  + Definitie: stelsel van uitspraken, bestaand uit premissen en conclusie

  $$\underbrace{\text{Als het regent, dan is de straat nat.}}_{\text{Premisse 1}} \underbrace{\text{Het regent.}}_{\text{Premisse 2}} \underbrace{\text{Dus: de straat is nat.}}_{\text{Conclusie}}$$

  \centering


  ![](img/aristotle.jpg){height=45% width=45%} \hfill ![](img/frege.png){height=45% width=45%}

# Welk inferenties zijn geldig?

  \centering
  \LARGE

  ![](img/wooclap-1.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA1>

# Geldigheid (2)

  + Inductief: de premissen maken de conclusie waarschijnlijk
  + Deductief: de conclusie volgt onvermijdelijk uit de premissen $\heartsuit$

  \centering

  ![](img/nimoy.jpg){height=50% width=50%}

# Onvermijdelijk?

  + Een inferentie is geldig desda ('dan en slechts dan als') het onmogelijk is
    dat de premissen waar zijn en de conclusie onwaar.

# Voorbeelden

  (1) Als het regent, dan is de straat nat. Het regent. Dus: de straat is nat.

  \centering
  \alert{geldig}

  (2) Als de zon schijnt, dan is de straat nat. De zon schijnt. Dus: de straat is nat.

  \centering
  \alert{geldig!}

# Vraag

  \centering
  \LARGE

  Wanneer is een inferentie \emph{on}geldig?

# Voorbeeld

  (3) De straat is nat, en als het regent dan is de straat nat. Dus: het regent!

  \centering
  \alert{ongeldig}

  ![](img/wet.jpg){width=50% height=50%}


# Is de volgende inferentie geldig?

  \centering
  \Large

  (4) Hij is de broer van mijn moeder. Dus: hij is mijn oom.

  ![](img/wooclap-1.png){height=50% width=50%}

  <https://app.wooclap.com/ILOGICA1>

# Logische vorm

  + Abstraheren van logisch irrelevante uitdrukkingen.

  $$ \text{Als}\underbrace{\text{het regent}}_{A}\text{,
  dan}\underbrace{\text{is de straat nat}}_{B}.\underbrace{\text{Het
  regent}}_{A}\text{. Dus: }\underbrace{\text{de straat is nat}}_{B}.$$

  $$\leadsto$$

  $$\text{Als }A\text{, dan }B, A\textbf{ Dus: } B$$


  \centering
  \alert{geldig}

# Logische vorm

  + Abstraheren van logisch irrelevante uitdrukkingen.

  $$\underbrace{\text{Hij}}_{x}\underbrace{\text{is de broer
  van}}_{R}\underbrace{\text{mijn
  moeder}}_{a}\text{ Dus }\underbrace{\text{hij}}_{x}\underbrace{\text{is mijn
  oom}}_{P}$$

  $$\leadsto$$

  $$xRa\textbf{ Dus: } Px$$

  \centering
  \alert{ongeldig}

# Geldigheid (2)

  > Een inferentie is geldig desda het onmogelijk is
    dat de premissen waar zijn en de conclusie onwaar.

  + Materieel: op basis van de betekenis van begrippen
  + Formeel: alleen op basis van logische vorm $\heartsuit$

# Theoretische logica

  \centering

  ![](img/newton.jpg){height=45% width=45%} \hfill ![](img/boole.png){height=45% width=45%}

  + Geeft een _wiskundig model_ van geldige inferentie:
    - syntaxis (formele talen)
    - semantiek (mogelijke situaties)
    - bewijstheorie (inferentie)
  + Kader: verzamelingenleer

# Klassieke logica

  **Principe van bivalentie**: Elk uitspraak$^\dagger$ heeft precies een w'waarde: ofwel
  waar of onwaar.

  $\dagger$ behalve:

  + vragen
  + imperatieven
  + nonsense
  + \dots

# Principe van explosie


  Een inferentie is altijd geldig als de premissen strijdig zijn:

  \vspace{4ex}

  > De straat is zowel nat als ook niet nat. Dus: het telefoonnummer van mijn
  moeder is \texttt{+49 (0) 163 1737743}.


  \vspace{4ex}

  \centering

  ![](img/xkcd-explosion.png){height=50% width=85%}

# Argument

  + Vorm: $A,\text{niet-}A\textbf{ Dus: } B$

  + Mogelijk dat de premissen waar zijn maar de conclusie niet?

  + Mogelijk dat $A$ en $\text{niet-}A$ waar zijn maar $B$ onwaar?

  + Nee, want dan is $A$ waar _en_ onwaar (contra bivalentie).

  + Dus: Onmogelijk dat de premissen waar zijn en conclusie niet.

  + **Dus**: De inferentie is geldig.

# Logica \& KI



  + Wetenschap van redeneren
  + Basiswetenschap (grondslagen, hulpmiddel, ...)

  ~~~~
    if 0!=1:
      print("Dat is logisch!")
  ~~~~

  + Logical AI

# Samenvatting

  + Inferenties bestaan uit premissen en conclusie.
  + Een inferentie is geldig desda het onmogelijk is dat de premissen
  waar zijn en de conclusie tegelijk onwaar is.
  + Logica geeft een wiskundig model van geldige inferentie.
  + Klassieke logica heeft bivalentie (en dus explosie)
