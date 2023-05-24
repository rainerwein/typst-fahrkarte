#let ticket="Deutschland-Ticket"
#let ticket_alt="Deutschlandticket"
#let preis="49€"
#let inhaber="Max Mustermann"
#let beginn="2023-05-01"
#let geburtsdatum="2001-09-11"
#let ende="2023-09-30"
#let qrcode="./assets/qrcode.png"
#let bgcolor=rgb(10, 50, 123)
#let accolor=bgcolor.darken(10%)

#set page(width: 87.6mm, height: 56mm, margin: 2mm, background: rect(width: 100%, height: 100%, fill: bgcolor))
#set text(fill: white)

#place(center, dx: 1.3cm, dy: -0.4cm, text(font: "DB Sans", weight: "bold", size: 113pt, fill: accolor, preis))

#place(left, dx: 2.25mm, dy: 23.8mm, text(font: "DB Head", weight: "black", size: 18pt, tracking: 0.0pt, ticket))
#place(left, dx: 2.6mm, dy: 16.95mm, text(font: "DB Head", weight: "light", size: 16.5pt, tracking:0.0pt, "2. Klasse"))
#place(bottom+left, dx: 2.6mm, dy: -4.1mm, text(font: "DB SansCond", weight: "bold", size: 10.75pt, tracking:0.35pt, inhaber))

#place(bottom+right, dx: -3.1mm, dy: -10.05mm, text(font: "DB Sans Comp", weight: "bold", size: 9pt, tracking:0.0pt, "Gültig von " + beginn + " bis"))
#place(bottom+right, dx: -2.75mm, dy: -4.1mm, text(font: "DB Head", weight: "black", size: 14.5pt, tracking:0.1pt, ende))

#place(top+left, dx: 2.25mm, dy: 1.6mm, rect(width: 5.75mm, height: 0.815cm, stroke: none, fill: white, radius: 0.4mm))
#place(top+left, dx: 2.6mm, dy: 2.45mm, image("./assets/signet_deutschlandticket.png", width: 0.5cm))
#place(top+right, dx: -2.55mm, dy: 2.85mm, image("./assets/db_logo_white.svg", width: 0.8cm))

#pagebreak()

#place(right+horizon, dx: -1.45mm, rect(width: 4.89cm, height: 4.89cm, fill: white, radius: 1mm))
#place(right+horizon, dx: -2.15mm, image(qrcode, width: 4.75cm))
#place(right+horizon, dx: -2.15mm, rect(width: 4.75cm, height: 4.75cm, stroke: white+1.25mm, fill: none, radius: 1.5mm))

#place(top+left, dx: 1.25mm, dy: 1.8mm,
    place(rect(stroke: white+0.6mm, radius: 1mm, fill: none, width: 3.05cm, height: 3.4cm)) +
    place(dx: 1.4mm, dy: 2.4mm, text(font: "DB SansCond", size: 9.75pt, "Deutschlandticket")) +
    place(dx: 2.1mm, dy: 9.9mm, text(font: "DB Sans Comp", size: 7.75pt, "Gültig ab: " + beginn)) +
    place(dx: 2.1mm, dy: 13.2mm, text(font: "DB Sans Comp", size: 7.75pt, "Gültig bis: " + ende)) +
    place(dx: 2.1mm, dy: 18.2mm, text(font: "DB Sans Comp", weight: "bold", size: 7pt, inhaber)) +
    place(dx: 2.1mm, dy: 21.5mm, text(font: "DB Sans Comp", size: 7pt, "Geburtsdatum: " + geburtsdatum)) +
    place(dx: 2.2mm, dy: 27.55mm, image("./assets/sru_white.svg", width: 2.4cm)) +
    place(dy: 34.23mm, image("./assets/br111.png", width: 3cm))
)