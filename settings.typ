#let settings = doc => {
  set text(
    font: "RIT Rachana",
    lang: "ml",
    size: 10.5pt,
    costs: (
      hyphenation: 0%,
    ),
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
  show heading.where(level: 3): it => {
    align(center)[
      #text(size: 14pt, weight: "bold")[#it]
    ]
  }

  set quote(quotes: false)
  show quote: q => {
    set par(first-line-indent: 0pt)
    align(center)[
      #box[
        #align(left)[
          #text(weight: "bold")[#q]
          #if q.attribution != none [#h(1cm) -(#q.attribution)]
        ]
      ]
    ]
  }

  set footnote.entry(separator: line(length: 100%, stroke: 0.5pt))

  doc
}
