#import "settings.typ": settings

#show: settings

#include "cover.typ"
#include "preface-1.typ"

#counter(page).update(0)
#set page(
  numbering: "i",
  header: context {
    align(center)[#counter(page).display()]
  },
  footer: {},
)
#include "ഉപോൽഘാതം.typ"
#include "ചിഹ്നങ്ങൾ.typ"
#pagebreak()
#counter(page).update(1)
#set page(numbering: "1")
#include "അവതാരിക.typ"
#include "ശുദ്ധിപത്രം.typ"
