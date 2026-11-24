#import "@preview/cetz:0.5.3"

#set page(width: auto, height: auto, margin: 16pt)
#set text(font: "Rachana", size: 11pt)

#let pt-polar(angle, r) = (
  calc.cos(angle) * r,
  calc.sin(angle) * r,
)

#let directions = cetz.canvas(length: 1cm, {
  import cetz.draw: *

  line((-3, 0), (3, 0), stroke: .5pt, name: "x")
  line((0, -3), (0, 3), mark: (end: "straight", length: 0.1, fill: none), stroke: .5pt, name: "y")
  line((-3, -3), (3, 3), stroke: .5pt, name: "d1")
  line((-3, 3), (3, -3), stroke: .5pt, name: "d2")

	let rad = 2.6
  circle((0, 0), radius: rad, stroke: (paint: black, thickness: 0.65pt, dash: "dotted"))

  let d-tan = 0.12
  for i in range(8) {
    let mid = i * 45deg + 22.5deg
    let p-mid = pt-polar(mid, rad)
    let tx = -calc.sin(mid) * .01
    let ty = calc.cos(mid) * .01
    let p1 = (p-mid.at(0) - tx * d-tan, p-mid.at(1) - ty * d-tan)
    let p2 = (p-mid.at(0) + tx * d-tan, p-mid.at(1) + ty * d-tan)
    line(p1, p2, stroke: .5pt, mark: (end: "straight", length: 0.13, fill: none))
  }

  content("x.end", align(center)[തെക്കു് \ (മകരാദി)], anchor: "west", padding: 0.2)
  content("x.start", align(center)[വടക്കു് \ (കൎക്ക്യാദി)], anchor: "east", padding: 0.2)
  content("y.end", align(center)[കിഴക്കു് (കോടി)], anchor: "south", padding: 0.2)
  content("y.start", align(center)[പടിഞ്ഞാറു (തുല്യാദി)], anchor: "north", padding: 0.2)
  content("d1.end", [അഗ്നികോൺ], anchor: "west", padding: 0.2)
  content("d1.start", [വായുകോൺ], anchor: "east", padding: 0.2)
  content("d2.end", [നിര്യതി], anchor: "north-west", padding: 0.1)
  content("d2.start", [ഈശകോൺ], anchor: "south-east", padding: 0.1)

  content((to: "d1.70%", rel: (-.25, 0)), [നാലാം പദം])
  content((to: "d1.33%", rel: (-.2, 0)), [രണ്ടാം പദം])
  content((to: "d2.67%", rel: (-.15, 0)), [മൂന്നാം പദം])
  content((to: "d2.30%", rel: (-.1, 0)), [ഒന്നാം പദം])

})

#directions