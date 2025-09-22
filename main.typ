#set document(
  title: "",
  description: "",
  author: (
    "Marcos Brito",
    "Giovanna Barbosa",
    "Thiago Correa",
    "Luciano Gonçalves"
  ),
  keywords: (),
  date: datetime(day: 8, month: 8, year: 2025),
)

#set page(paper: "a4", margin: (top: 3cm, left: 3cm, bottom: 2cm, right: 2cm))
#set text(font: "Arial", size: 12pt)
#set par(justify: true)

#align(center)[
  = #lorem(10)

  #upper[
    Marcos Henrique Pereira de Brito

    Thiago Correa do Espírito Santo

    Giovanna Augusto Barbosa

    Luciano Gonçalves De Carvalho
  ]
]

#pagebreak()

#include "abstract.typ"

#pagebreak()

#set page(numbering: "1", number-align: right)
#set heading(numbering: "1.")

#include "introduction.typ"
#include "foundation.typ"

#pagebreak()

#bibliography("./works.yml", full: true, title: "Bibliografia", style: "associacao-brasileira-de-normas-tecnicas")
