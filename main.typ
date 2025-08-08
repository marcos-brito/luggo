#set document(
  title: "",
  description: "",
  author: "Marcos Brito",
  keywords: (),
  date: datetime(day: 8, month: 8, year: 2025),
)

#set page(paper: "a4", margin: (top: 3cm, left: 3cm, bottom: 2cm, right: 2cm))
#set text(font: "Arial", size: 12pt)
#set par(justify: true, spacing: 1.5cm)

= Resumo

#lorem(100)

= Resumo

#lorem(100)

#pagebreak()

#set page(numbering: "1", number-align: right)
#set heading(numbering: "1.")

= Introdução

= Metodologia

= Conclusão

#bibliography("./works.yml", full: true, title: "Bibliografia", style: "associacao-brasileira-de-normas-tecnicas")

