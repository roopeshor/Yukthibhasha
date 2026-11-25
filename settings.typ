#let settings = doc => {
  set text(font: "Rachana", costs: (hyphenation: 20%), size: 10.5pt)
  set par(justify: true, first-line-indent: 1em)
  set page("a5", margin: 1.5cm)

  show heading.where(level: 1): it => {
		pagebreak(weak: true)
    v(.6em)
    align(center)[
      #text(size: 25pt)[#it]
    ]
    v(.6em)
  }

	show quote: q => {
		align(center)[
			#text(weight: "bold")[#q]
		]
	}
  doc
}
