#FORMER DECISIONS

url = "https://images.radio-canada.ca/q_auto,w_1600/v1/ici-info/16x9/uneprem-salle-cinema.jpg"
decision = Decision.new(
  title: "Cinéma municipal Le Luxy",
  category: "Culture",
  description: "a) Poursuite du projet d’éducation artistique et culturelle « Atelier cinéma »
Convention avec le lycée Romain Rolland
b) Partenariat de classe à projet artistique et culturel « Autour de Federico Fellini »
Convention avec le collège Molière
c) Partenariat de classe à projet artistique et culturel « Le récit d’aventures »
Convention avec le collège Molière",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "a) APPROUVE la convention financière avec le lycée Romain Rolland relative à la poursuite du projet d’éducation artistique et culturelle (enseignement facultatif cinéma) pour l’année scolaire 2018/2019.
b) APPROUVE la convention financière avec le collège Molière relative à la mise en œuvre de la classe à projet artistique et culturel « Autour de Federico Fellini » pour l’année scolaire 2018/2019.
c) APPROUVE la convention financière avec le collège Molière relative à la mise en œuvre de la classe à projet artistique et culturel « Le récit d’aventures » pour l’année scolaire 2018/2019.
",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.add_results(decision.accepted_votes, decision.rejected_votes, decision.deferred_votes)
decision.remote_photo_url = url
decision.save!


url = "https://img.20mn.fr/Z55sMENgSb-lQf2FVPk1Sg/814x360_avenue-saint-exupery-villemur-tarn.jpg"
decision = Decision.new(
  title: "Projet de plan métropolitain de l’habitat et de l’hébergement (PMHH)",
  category: "Logement",
  description: "Avis sur le PMHH approuvé par le Conseil métropolitain du 28 juin 2018",
 accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "DONNE un avis favorable au projet de plan métropolitain de l’habitat et de l’hébergement approuvé par le Conseil métropolitain du 28 juin 2018 assorti des réserves suivantes :
- la Métropole propose de venir en complément des aides financières de l’Etat (sous condition des moyens dédiés au budget métropolitain et de l’engagement de l’Etat) : la Métropole doit confirmer son engagement de façon soutenue sur le volet financier et il sera nécessaire de veiller à ce que la responsabilité de l’Etat en matière de logement social soit réaffirmée ;
- la Métropole doit répondre aux enjeux d’un vaste territoire mais tout en tenant compte des besoins locaux, notamment sur la production de logements sociaux en nombre suffisant, dont les logements à prêt locatif aidé d'intégration (PLAI) et en veillant à la répartition équilibrée sur la Métropole du nombre de logements construits. Sur le supplément de loyer de solidarité (SLS), la municipalité souhaite maintenir l’exonération sur les secteurs retenus dans le PLHI ;
- la Métropole propose de travailler sur la gestion du parc social au sein des conférences intercommunales du logement (CIL) : l’EPT doit être l’échelle de référence pour agir dans le cadre métropolitain en donnant « le droit » aux municipalités de conduire des politiques volontaristes à l’échelle de leur propre territoire, dans l’esprit de la coopérative des villes ;
- sur les actions en direction des copropriétés dégradées et fragiles, la coordination au sein de la Métropole et des EPT en corrélation avec les moyens financiers est nécessaire et indispensable, avec une mise en synergie d’autres acteurs et partenaires ;
- sur l’hébergement, les moyens dédiés sont insuffisants et ne permettront pas d’avancer à un rythme significatif pour répondre à l’urgence des situations, et DIT que la municipalité souhaite voir inscrire dans le document d’orientation du PMHH les dangers de la loi ELAN et affirme son opposition, au même titre que les inquiétudes exprimées sur la réduction des moyens pour les collectivités locales, et le contexte d’incertitude institutionnel.
",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.add_results(decision.accepted_votes, decision.rejected_votes, decision.deferred_votes)
decision.remote_photo_url = url
decision.save!


url = "https://www.creditagricole.info/upload/docs/image/jpeg/2014-10/agriculture-aliment-silo-sc.jpg.associated/th-609x359-agriculture-aliment-silo-sc.jpg.jpg"
decision = Decision.new(
  title: "Usine SYLO",
  category: "Urbanisme",
  description: "Avis sur le dossier de demandes de permis de construire et d'autorisation d'exploiter l'unité de valorisation énergétique (UVE) comprenant l'étude d'impact du projet",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "EMET un avis favorable sur le dossier de demandes de permis de construire et d’autorisation d’exploiter l’Unité de Valorisation Energétique (UVE), comprenant l’étude d’impact du projet, soumis à enquête publique dans le cadre de l’évaluation environnementale prévue par la loi.
  ",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.add_results(decision.accepted_votes, decision.rejected_votes, decision.deferred_votes)
decision.remote_photo_url = url
decision.save!


url = "https://mairie2.lyon.fr/sites/mairie2/files/content/restfiles/2018_06_7/Perspective_coeur_presquile_victor_hugo_p.jpg"
decision = Decision.new(
  title: "Acquisition 2/22, rue René Villars et 12/16, rue André Voguet",
  category: "Urbanisme",
  description: "Acquisition d’un volume immobilier à la société civile de construction vente dénommée « CARIVRY »",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "APPROUVE l’acquisition à la SCCV « CARIVRY » (ou à tout substitué) du volume immobilier portant le numéro 4 conformément à l’état descriptif de division volumétrique établi le 7 septembre 2018 par le cabinet de géomètres GTA, et dépendant actuellement du périmètre du projet immobilier de la société « CARIVRY », sis 2/22, rue René Villars et 12/16, rue André Voguet, sur les parcelles nouvellement cadastrées section K n° 270, 272 et 275.
  ",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.add_results(decision.accepted_votes, decision.rejected_votes, decision.deferred_votes)
decision.remote_photo_url = url
decision.save!

# FUTURE DECISIONS

url = "https://www.atelierphilippemadec.fr/img/projets/renovation-de-lecole-regionale-du-premier-degre-_-qe-la-verriere-78/atelier-architecture-philippe-madec-renovation-de-lecole-regionale-du-premier-degre-_-qe-la-verriere-78-1.jpg"
decision = Decision.new(
  title: "Rénovation établissement au 5, rue René Robin",
  category: "Urbanisme",
  description: "Travaux de rénovation
Cautionnement de l’emprunt contracté par l’école des techniques de l’image (CE3P) auprès de l’établissement bancaire « Crédit Mutuel »",
  result: 0,
  minutes: " ACCORDE le cautionnement au lycée professionnel et technique privé dénommé « école des techniques de l’image-CE3P » sur l’intégralité de l’emprunt de 688 345,00 € que ce dernier se propose de contracter auprès de l’établissement bancaire « Crédit Mutuel » dans le cadre des nouveaux travaux de rénovation de l’ensemble immobilier sis 5, rue René Robin que cet organisme loue actuellement à la Commune en vertu d’un bail commercial renouvelé.
  ",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "http://goparis.fr/wp-content/uploads/2017/04/marche-du-livre-ancien-paris_jadoremonmarche.jpg"
decision = Decision.new(
  title: "Ventes exceptionnelles de livres et de CD",
  category: "Culture",
  description: "Ventes exceptionnelles de livres et de CD retirés des collections de la Médiathèque et attribution des recettes au comité populaire du camp de Jalazone et Jifna",
  result: 0,
  minutes: "APPROUVE les ventes de livres et de CD de la Médiathèque municipale, et FIXE les prix de vente comme suit :
- livres de poche adulte et jeunesse : 0,50 €,
- albums pour la jeunesse, bandes dessinées, romans adulte et jeunesse : 1 €,
- beaux livres adulte (livres d’art, photographie ...) : 3 €,
- CD de musique : 1 €.
Et DECIDE de verser les recettes issues des ventes de livres et de CD au comité populaire du camp de Jalazone et Jifna en Palestine.
  ",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://www.drone-malin.com/medias/images/prise-de-vue-aerienne-par-drone-de-veyrier.jpg"
decision = Decision.new(
  title: "Copropriétés",
  category: "Logement",
  description: "Utilisation de données issues du registre national d’immatriculation des syndicats de copropriétaires
Chartes entre la ville d’Ivry-sur-Seine, l’Etablissement Public Territorial Grand-Orly Seine Bièvre et le prestataire",
  result: 0,
  minutes: "APPROUVE les chartes pour la confidentialité et l’utilisation des données issues du registre d’immatriculation des copropriétés avec l’Etablissement Public Territorial Grand-Orly Seine Bièvre et le prestataire.
  ",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


