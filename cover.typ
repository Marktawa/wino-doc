// ─────────────────────────────────────────────
//  Winteriors – Online Sales Associate Proposal
//  Cover Page
// ─────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt),
)

#set text(font: "Liberation Sans", size: 11pt)

// ── Colours ───────────────────────────────────
#let navy     = rgb("#1a2744")   // dark navy blue
#let crimson  = rgb("#c0392b")   // red accent
#let light-bg = rgb("#f2f2f2")   // off-white background
#let white    = rgb("#ffffff")

// ══════════════════════════════════════════════
//  TOP SECTION  (white background)
// ══════════════════════════════════════════════
#block(
  width: 100%,
  fill: white,
  inset: (top: 32pt, left: 36pt, right: 36pt, bottom: 0pt),
)[
  // Logo placeholder – replace image() with your actual logo file
  #box(
    width: 110pt,
    height: 48pt,
    fill: light-bg,
    radius: 4pt,
    inset: 6pt,
  )[
    #align(center + horizon)[
      #text(size: 8pt, fill: rgb("#888888"))[YOUR LOGO]
    ]
  ]
]

// ── Spacer ────────────────────────────────────
#v(28pt)

// ── Title block ───────────────────────────────
#block(
  width: 100%,
  inset: (left: 36pt, right: 36pt),
)[
  #text(
    size: 16pt,
    weight: "regular",
    tracking: 3pt,
    fill: navy,
  )[ONLINE SALES ASSOCIATE]

  #v(2pt)

  #text(
    size: 38pt,
    weight: "bold",
    tracking: 1pt,
    fill: navy,
  )[PROPOSAL]
]

// ══════════════════════════════════════════════
//  DIAGONAL GRAPHIC BAND
//  Achieved with two overlapping rectangles and
//  a clipped polygon approximation using boxes.
// ══════════════════════════════════════════════

#v(20pt)

// Navy bar full width
#block(
  width: 100%,
  height: 160pt,
  clip: true,
)[
  // Navy base layer
  #place(
    top + left,
    dx: 0pt,
    dy: 0pt,
    block(width: 100%, height: 160pt, fill: navy)
  )

  // Crimson diagonal accent – sits on the right side
  // Simulated with a rotated, oversized box clipped to the parent
  #place(
    top + right,
    dx: 0pt,
    dy: -30pt,
    block(
      width: 220pt,
      height: 240pt,
      fill: crimson,
      // Rotate to create diagonal edge visible on left side of block
    )[
      #rotate(-18deg,
        block(width: 220pt, height: 240pt, fill: crimson)
      )
    ]
  )

  // Light grey triangle accent (bottom-right corner)
  #place(
    bottom + right,
    dx: 0pt,
    dy: 0pt,
    block(
      width: 90pt,
      height: 90pt,
      fill: light-bg,
    )[
      #rotate(45deg,
        block(width: 130pt, height: 130pt, fill: light-bg)
      )
    ]
  )
]

// ══════════════════════════════════════════════
//  BOTTOM SECTION – Prepared for / by details
// ══════════════════════════════════════════════

#v(16pt)

#block(
  width: 100%,
  inset: (left: 36pt, right: 36pt),
)[
  // Date – top right
  #align(right)[
    #text(size: 10pt, weight: "bold", fill: navy)[21 April 2026]
  ]

  #v(8pt)

  // Prepared for
  #text(size: 9pt, fill: crimson, weight: "bold", tracking: 1pt)[PREPARED FOR:]

  #v(4pt)

  #text(size: 14pt, weight: "bold", fill: navy)[Winteriors]

  #v(2pt)

  #text(size: 10pt, fill: navy)[Furniture Store, Lusaka, Zambia]

  #v(20pt)

  // Divider
  #line(length: 100%, stroke: 0.5pt + rgb("#cccccc"))

  #v(16pt)

  // Prepared by
  #text(size: 9pt, fill: crimson, weight: "bold", tracking: 1pt)[PREPARED BY:]

  #v(4pt)

  #text(size: 14pt, weight: "bold", fill: navy)[Mark Munyaka]

  #v(10pt)

  // Contact details
  #grid(
    columns: (16pt, 1fr),
    row-gutter: 8pt,
    // Globe
    [🌐], [#text(size: 10pt)[markmunyaka.kwamwena.link]],
    // Email
    [✉️], [#text(size: 10pt)[markmunyaka\@kwamwena.link]],
    // Phone
    [📞], [#text(size: 10pt)[+260 979 314 286]],
  )

  #v(24pt)

  // Confidentiality note
  #text(size: 8pt, fill: rgb("#aaaaaa"))[
    This document is intended solely for the Winteriors team.
  ]
]
