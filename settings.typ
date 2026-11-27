#let settings = doc => {
  set text(
    font: "RIT Rachana",
    lang: "ml",
    size: 10.5pt,
		costs: (
			hyphenation: 0%
		)
  )
  show math.equation: set text(
    font: (
      "New Computer Modern Math",
      (
        name: "RIT Rachana",
        covers: regex("[ഀ-ൿ]"),
      ),
    ),
  )
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

  set quote(quotes: false)
  show quote: q => {
    align(center)[
      #text(weight: "bold")[#q]
    ]
  }
  set footnote.entry(separator: line(length: 100%, stroke: 0.5pt))

  doc
}
