#import "@preview/neat-cv:0.4.0": (
  contact-info, cv, email-link, entry, item-pills, item-with-level,
  publications, side, social-links,
) 

#show: cv.with(
  author: (
    firstname: "Bastien",
    lastname: "Gallay",
    email: "bastien@gallay.org",
    address: [17 rue du Petit Goave, 33000 Bordeaux, France],
    phone: "(+33) 06 72 66 47 38",
    // matrix: "",
    position: ("Crafting Technology Officer", "25 ans d'expérience en développement logiciel"),
    // website: "https://docbrownlabs.com",
    // twitter: "docbrown1955",
    // mastodon: "@docbrown@sciences.social",
    // github: "",
    // gitlab: "",
    linkedin: "bastiengallay",
    // researchgate: "emmett-brown",
    // scholar: "",
    // orcid: "0000-0000-0000-1955",
  ),
  profile-picture: image("identite.png"),
  accent-color: rgb("#4682b4"),
  // font-color: rgb("#333333"),
  header-color: rgb("#3b4f60"),
  // date: datetime.today().display("[month repr:long] [year]"),
  // heading-font: "Fira Sans",
  // body-font: ("Noto Sans", "Roboto"),
  // body-font-size: 10.5pt,
  // paper-size: "us-letter",
  // side-width: 4cm,
  // gdpr: false,
  // footer: auto,
)

#side[
  = A propos
  Passionné de logiciel depuis l’enfance, j’ai développé une expertise en conception de solutions innovantes et en accompagnement d’équipes techniques. Fort de 15 ans d’expérience, je transmets ma passion pour l’innovation, l’agilité et le software craftsmanship à travers l’entrepreneuriat, le coaching et la formation.

  = Centres d'intérêt
  - Intelligence artificielle
  - Technologies émergentes
  - Dynamique des équipes
  - Formation et coaching

  = Contact
  #contact-info()

  = Informations
  Nationalité : Français

  Date de naissance : 3/03/1979

  // #v(1fr)

  #social-links()

  // Use colbreak() to insert a page break
  // #colbreak()

  = Langues
  #item-with-level("Français", 5, subtitle: "Langue maternelle")
  #item-with-level("Anglais", 4, subtitle: "Courant")
  // #item-with-level("Espagnol", 2, subtitle: "Notions")

  // = Technology
  // #item-with-level("Flux Capacitor Design", 5)
  // #item-with-level("Time Machine Construction", 5)
  // #item-with-level("Robotics", 3)
  // #item-with-level("Computer Programming", 3)

  = Other Skills
  #item-pills((
    "Creative Problem Solving",
    "Improvisation",
  ))
]

= Expérience Professionnelle

#entry(
  title: "Chief Technology Officer",
  date: "10/2024 - 08/2025",
  institution: "PALO IT",
  location: "Bordeaux/Paris, France",
)[
  - Responsable de la stratégie technologique et de l'innovation, avec participation au COMEX de l'entreprise.
  - Management et mentorat des équipes techniques (40+ personnes) et développement des talents.
  - Conception et mise en œuvre de Gen-e2, méthode basée sur l'IA pour la création de produits numériques.
  - Organisation des propositions commerciales et coordination des initiatives technologiques internationales.
  - Formation des équipes sur les technologies émergentes et mise en place de partenariats stratégiques.
]

#entry(
  title: "Consultant Technique Senior",
  date: "02/2021 - 08/2024",
  institution: "PALO IT",
  location: "Bordeaux, France",
)[
  - Accompagnement des clients dans la définition et la mise en œuvre de leurs stratégies technologiques.
  - Animation de la communauté technique interne et partage des connaissances.
  - Création du Career Path général des consultant France.
  - Participation au recrutement technique et à l'intégration des nouveaux talents.
  - Conseil en architecture logicielle, choix technologiques et meilleures pratiques de développement.
  - Formation et coaching des équipes de développement sur les méthodologies agiles et les technologies modernes.
  - Conception et développement de solutions logicielles innovantes répondant aux besoins spécifiques des clients.
]

#entry(
  title: "Fondateur & Coach Agile",
  date: "09/2013 - 01/2021",
  institution: "Upwiser",
  location: "Bordeaux, France",
)[
  - Animation de formations et d'ateliers sur l'agilité et le développement logiciel.
  - Ingénierie pédagogique pour des programmes de formation sur mesure.
  - Réponse et obtention d'appels d'offre de formation des OPCO en action collectives.
  - Recrutement d'un coach agile pour renforcer l'accompagnement des équipes.
  - Conseil en organisation et gestion de projets pour améliorer la productivité et la qualité.
  - Coaching individuel et d'équipe pour favoriser la collaboration et la communication.
  - Création du cercle Lean Startup Bordeaux pour promouvoir l'innovation locale.
  - Prises de parole lors d'événements et conférences sur l'agilité et les startups.
  - Accompagnement de près de 100 startups et PME dans leur transformation agile et leur gestion de l'innovation.
]

// = Academic Experience

// #entry(
//   title: "Visiting Professor: Temporal Physics",
//   date: "1985",
//   institution: "Hill Valley University",
//   location: "Hill Valley, CA, USA",
// )[
//   - Developed and taught courses on time travel theory and paradox management.
//   - Supervised student projects on experimental physics and invention.
// ]

// #entry(
//   title: "Adjunct Lecturer: Quantum Theory and Paradoxes",
//   date: "1978 – 1984",
//   institution: "California Institute of Technology",
//   location: "Pasadena, CA, USA",
// )[
//   - Lectured on advanced quantum mechanics and paradoxes in theoretical physics.
//   - Organized interdisciplinary seminars on causality and time.
// ]

// #entry(
//   title: "Research Fellow: High-Energy Particle Physics",
//   date: "1952 – 1955",
//   institution: "MIT",
//   location: "Cambridge, MA, USA",
// )[
//   - Conducted research on high-voltage circuits and early particle acceleration experiments.
// ]


= Education

#entry(
  title: "DEA Réalité Virtuelle et Maîtrise des Systèmes Complexes",
  date: "2002",
  institution: "Institut National de Sciences et Techniques Nucléaires (INSTN)",
  location: "Sacclay, France",
  [Sujet de recherche: _"Comparaison des algorithmes de classification pour la segmentation multitexturées"_.],
)

#entry(
  title: "Licence et Maîtrise d'Informatique",
  date: "2001",
  institution: "Université de Picardie Jules Verne",
  location: "Amiens, France",
  [Mémoire: _"Complexité des algorithmes quantiques"_.],
)

#entry(
  title: "Diplôme Universitaire de Technologie (DUT) Informatique",
  date: "1999",
  institution: "Institut Universitaire de Technologie (IUT) d'Amiens",
  location: "Amiens, France",
  [Mémoire: _"Recherche de chemins pour une horde de robots"_.],
)


// = Grants and Awards

// #entry(
//   title: "Lifetime Achievement in Innovation",
//   date: "1990",
//   institution: "International Society of Inventors",
//   location: "Geneva, Switzerland",
//   "Recognized for a lifetime of inventive contributions to science and engineering.",
// )

// #entry(
//   title: "Best Experimental Demonstration",
//   date: "1986",
//   institution: "World Science Congress",
//   location: "London, UK",
//   "Awarded for the live demonstration of the DeLorean Time Machine prototype.",
// )

// #entry(
//   title: "Hill Valley Science Achievement Award",
//   date: "1985",
//   institution: "Hill Valley Science Society",
//   location: "Hill Valley, CA, USA",
//   "Awarded for outstanding contributions to science and innovation in the community.",
// )

// #colbreak()

// = Talks

// #entry(
//   title: "From DeLorean to Locomotive: Engineering Time Machines",
//   date: "1991",
//   institution: "Society of Inventors Annual Meeting",
//   location: "San Francisco, CA, USA",
//   "Panelist on the evolution of time travel technology.",
// )

// #entry(
//   title: "Paradoxes and Causality: Lessons from Time Travel",
//   date: "1986",
//   institution: "World Science Congress",
//   location: "London, UK",
//   "Invited talk on managing paradoxes and causality in theoretical physics.",
// )

// #entry(
//   title: "The Flux Capacitor: A New Era in Temporal Mechanics",
//   date: "1985",
//   institution: "International Physics Symposium",
//   location: "Geneva, Switzerland",
//   "Keynote on the invention and implications of the flux capacitor.",
// )

// = Publications

// #publications(yaml("publications.yml"), highlight-authors: (
//   "Brown, Emmett",
//   "Brown, Emmett Lathrop",
// ))

// = References

// #entry(
//   title: "Marty McFly",
//   institution: "Musician & Time Traveler",
//   location: "Hill Valley, CA, USA",
//   [
//     Long-term collaborator and field assistant in temporal experiments.\
//     Contact: #email-link("marty.mcfly@hillvalley.com")
//   ],
// )

// #entry(
//   title: "Clara Clayton",
//   institution: "Science Educator",
//   location: "Hill Valley, CA, USA",
//   [
//     Advisor on science communication and educational outreach.\
//     Contact: #email-link("clara.clayton@hillvalley.edu")
//   ],
// )
