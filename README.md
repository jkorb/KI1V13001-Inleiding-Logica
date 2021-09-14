<div align="center">

# KI1V13001 - Inleiding Logica

[About](#about) • [Contribute](#contribute) • [GitHub](#GitHub) • [Latex](#latex) • [Compiling](#compiling) • [License](#license) • [Contact](#contact)

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://gitgub.com/jkorb/truthmakers.bib/graphs/commit-activity)
[![made-with-latex](https://img.shields.io/badge/Made%20with-LaTeX-1f425f.svg)](https://www.latex-project.org/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)

</div>

## About

This is the source material for the course **Inleiding Logica** (KI1V13001) at Utrecht University.
The material consists of:

  + the syllabus (`lib/syllabus`)
  + the slides (`lib/slides`)
  + the lecture notes (`lib/notes`)

Students currently taking the course can find pdfs of the material under [Course Material](https://github.com/jkorb/KI1V13001-Inleiding-Logica/releases/latest).[^1]

## Contribute

We encourage contributions, especially but not exclusively from past and present students of the course.
Two simple ways of contributing are:

  + *open issues*, for example to point out typos, mistakes, or make feature requests
  + *making pull requests*, for example to fix a mistake yourself and become a [contributor](https://github.com/jkorb/KI1V13001-Inleiding-Logica/graphs/contributors).

If these things don't tell you anything yet, don't despair! 
Check the next two sections.

## GitHub

If you're here and don't know about GitHub already, then you're probably here because you're currently taking the course.
Note that it's not mandatory to learn git/GitHub, but it's a highly valuable skill and it allows you to contribute to the course material: immortalize yourself in our first-year logic course!

A good place to get started on git/GitHub is [here](https://guides.github.com/).

## LaTeX 

The technical bits of the course material are written in [LaTeX](https://www.latex-project.org/).
If you want to contribute, you'll need to learn it. 
Again, this is not mandatory if you're a student taking the course but again, it's a pretty useful skill.
In fact,
most scientific writing in formal disciplines (math, physics, computer science, ...) is done in LaTeX.
Get started here [here](https://www.overleaf.com/learn/latex/Tutorials).

The non-technical bits of the material are written in markdown (such as this readme and the syllabus), a *very* simple markup language.
Learn more about it [here](https://guides.github.com/features/mastering-markdown/).

## Compiling

If you want to compile the source materials yourself, you need `git`, a standard LaTeX install (e.g. `texlive-core`), `pandoc`, and `make`.
These are easy to get if you're working on Linux (via your package manager) or Mac (via `homebrew`).
I don't know about Windows but that should be possible, too (if you know you're way around GNU Make on Windows, please let me know).

The standard way of downloading and compiling is via the command line as follows (assuming you have installed the above dependencies):

``` shell
  git clone https://github.com/UtrechtUniversity/KI1V13001-Inleiding-Logica.git
  cd KI1V13001-Inleiding-Logica
  ./configure
  make all
```

This will create the folder `KI1V13001-Inleiding-Logica` in your current working directory with the course materials in it, and then compile the pdfs into a folder `pdf` inside.
Don't forget to run the `configure` script, since this will update the source code with the current course specifics (dates, TAs, etc.).

## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

## Contact

For communication about a current version of the course, especially current students of the course, please use [inleiding.logica@uu.nl](mailto:inleiding.logica@uu.nl) to get in touch.

For everybody and everything else, use [j.korbmacher@uu.nl](mailto:j.korbmacher@uu.nl).

[^1]: Everybody else can find them there, too, of course.
