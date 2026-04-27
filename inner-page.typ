// ─────────────────────────────────────────────
//  Winteriors – Online Sales Associate Proposal
//  Inner Page Template
// ─────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (top: 64pt, bottom: 64pt, left: 56pt, right: 56pt),

  // ── Header ──────────────────────────────────
  header: [
    #set text(size: 8pt, fill: rgb("#aaaaaa"))
    #grid(
      columns: (1fr, auto),
      align(left + horizon)[],
      align(right + horizon)[
        // Replace with: #image("logo.png", width: 80pt)
        #box(
          width: 80pt,
          height: 28pt,
          fill: rgb("#f2f2f2"),
          radius: 3pt,
          inset: 4pt,
        )[
          #align(center + horizon)[
            #text(size: 7pt, fill: rgb("#999999"))[SAMPLE LOGO]
          ]
        ]
      ]
    )
    #v(-6pt)
    #line(length: 100%, stroke: 0.5pt + rgb("#dddddd"))
  ],

  // ── Footer ──────────────────────────────────
  footer: [
    #line(length: 100%, stroke: 0.5pt + rgb("#dddddd"))
    #v(4pt)
    #set text(size: 8pt, fill: rgb("#888888"))
    #grid(
      columns: (1fr, auto),
      align(left + horizon)[
        Mark Munyaka #h(8pt)
        123 Street, Lusaka, Zambia #h(8pt)
        +260 979 314 286 #h(8pt)
        markmunyaka\@kwamwena.link
      ],
      align(right + horizon)[
        Page #counter(page).display("1")
      ]
    )
  ],
)

// ── Typography defaults ────────────────────────
#set text(
  font: "Liberation Serif",
  size: 10pt,
  fill: rgb("#222222"),
)

#set par(
  leading: 6pt,
  spacing: 10pt,
  justify: true,
)

// ── Custom components ──────────────────────────

// Large section heading with crimson underline
#let section-heading(title) = {
  v(16pt)
  text(
    size: 22pt,
    weight: "bold",
    fill: rgb("#1a2744"),
    font: "Liberation Sans",
    upper(title)
  )
  v(-6pt)
  line(length: 100%, stroke: 2.5pt + rgb("#c0392b"))
  v(8pt)
}

// Grey shaded subheading block
#let sub-heading(title) = {
  v(6pt)
  block(
    width: 100%,
    fill: rgb("#e8e8e8"),
    inset: (left: 10pt, top: 6pt, bottom: 6pt, right: 10pt),
    radius: 1pt,
  )[
    #text(
      size: 11pt,
      weight: "bold",
      fill: rgb("#1a2744"),
      font: "Liberation Sans",
    )[#title]
  ]
  v(4pt)
}

// Body paragraph
#let body-text(content) = {
  par(content)
  v(4pt)
}

// ══════════════════════════════════════════════
//  PAGE CONTENT
// ══════════════════════════════════════════════

// ── Section 1 ─────────────────────────────────
#section-heading("Position Overview")

#body-text[
  The central goal of this role is to turn the Winteriors website into an
  active sales channel. As Online Sales Associate, I will maintain the website,
  promote products, capture leads, and follow up with potential customers —
  all with the objective of generating sales for the business.
]

#sub-heading("Location")

#body-text[
  This role will be carried out remotely. All website maintenance, content
  creation, and lead management will be handled online. Regular communication
  with the in-store sales team will take place via WhatsApp or phone call to
  ensure the website remains aligned with what is available in the physical
  store.
]

#sub-heading("Hours")

#body-text[
  The role will be carried out on a flexible basis, with a commitment to
  ensuring that the core weekly cycle — product profiling, article writing,
  social posting, and weekly updates — is completed consistently each week.
]

#sub-heading("Schedule")

#body-text[
  The work follows a repeating weekly cycle centred on product promotion.
  Each week, one or more products will be featured, profiled, written about,
  promoted online, and summarised in a mailing list and WhatsApp group update.
]

#v(4pt)

#set list(marker: "•", indent: 12pt, body-indent: 6pt)
- Profile selected products and publish them on the website with a clear Call To Action.
- Write a detailed blog article about each product to support the promotion.
- Share posts across relevant online platforms and respond to interest generated.
- Send a weekly summary to the mailing list and WhatsApp group subscribers.

#sub-heading("Holiday / Vacation Time")

#body-text[
  Any planned time away will be communicated to the Winteriors team in advance
  so that expectations can be managed and the weekly cycle maintained or
  paused as agreed.
]

// ── Section 2 ─────────────────────────────────
#section-heading("Responsibilities")

#body-text[
  The following outlines the core responsibilities of the Online Sales
  Associate role at Winteriors. These responsibilities are designed to work
  together as a connected workflow rather than as isolated tasks.
]

#body-text[
  The primary responsibility is to maintain the Winteriors website and ensure
  it accurately reflects the products, prices, and promotions available at the
  physical store at all times. This is the foundation on which everything else
  is built. A website that is outdated or broken cannot serve as a sales
  channel.
]
