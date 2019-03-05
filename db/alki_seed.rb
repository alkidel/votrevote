# PAST DECISIONS

url = "https://www.habitat-humanisme.org/wp-content/uploads/2016/11/MI_St-J-de-Br_-602x416.jpg"
  decision = Decision.new(
    title: "Adhésion à la plateforme Uzed",
    category: "Finance",
    description: "La société Hexagone, basée à Tech Iroise à Saint Renan, a créé la plateforme informatique Uzed. Il s’agit d’une plateforme
de vente en ligne de biens d’occasion des collectivités publiques, accessible à tout acheteur potentiel (privé ou public).",
    accepted_votes: rand(1..10),
    rejected_votes: rand(1..8),
    deferred_votes: rand(1..3),
    minutes: "La société Hexagone, basée à Tech Iroise à Saint Renan, a créé la plateforme informatique Uzed. Il s’agit d’une plateforme
de vente en ligne de biens d’occasion des collectivités publiques, accessible à tout acheteur potentiel (privé ou public).
La CCPI a conclu une convention de partenariat avec la société, ouvrant droit également aux communes membres
d’utiliser ce service à un prix attractif.
A l’unanimité, le Conseil municipal approuve l’abonnement de la commune à la plateforme informatique Uzed pour une
durée d’un an reconductible 3 fois par reconduction expresse, pour un montant annuel de 250 € HT, et autorise le Maire
à signer le contrat.",
    council_date: DECISIONS_PAST.sample,
    town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!


url = "https://images.unsplash.com/photo-1532187643603-ba119ca4109e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
decision = Decision.new(
  title: "Concours « Faîtes de la science » - Soutien financier au collège Victoire Daubié de Plouzané",
  category: "Education",
  description: "Pour financer leur participation à la finale nationale, les collégiens ont lancé une campagne de financement participatif
et sollicité une aide financière auprès de la commune.",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "Les élèves de 3ème du collège Victoire Daubié de Plouzané ont participé à la finale régionale du concours « Faîtes de la
science » organisé le 12 avril dernier à l’Université de Bretagne Occidentale de Brest et ont présenté leur projet
« Molène : des refuges de goémoniers 100% autonomes sur le Lédénès ». Ce projet interdisciplinaire les a conduit a
travaillé durant toute l'année sur la cartographie de l'îlot, les marées, l’exploitation des algues, la réfection des cabanes
de goémoniers pour en faire des refuges de mer 100% autonomes en électricité et en eau, les activités scientifiques à
proposer aux visiteurs. Grâce à ce projet, ils ont remporté le concours régional et leur billet pour la finale nationale
organisée en Corse le 8 juin 2018 où ils ont obtenu le deuxième prix.
Le 31 mai dernier, les représentants des collégiens ont présenté leur projet lors d’une conférence à la Maison de l’Algue
au cours de laquelle ils ont notamment évoqué la ressource goémonière.
Pour financer leur participation à la finale nationale, les collégiens ont lancé une campagne de financement participatif
et sollicité une aide financière auprès de la commune. Après en avoir délibéré, le Conseil municipal décide à l’unanimité
d’attribuer une subvention de 100,00 € au Collège Victoire Daubié de Plouzané pour soutenir ce projet.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "http://www.ville-guerande.fr/sites/default/files/imagecache/img_garde/bretonne2.jpg"
decision = Decision.new(
  title: "Initiation à la langue bretonne",
  category: "Education",
  description: "Depuis 2013, le Conseil départemental et la Direction académique des Services de l’Education Nationale entendent
œuvrer de manière active pour que les jeunes Finistériens qui ne poursuivent pas une scolarité bilingue puissent
bénéficier le plus largement possible d’une initiation à la langue bretonne dans le cadre du temps scolaire.",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  result: 0,
  minutes: "Depuis 2013, le Conseil départemental et la Direction académique des Services de l’Education Nationale entendent
œuvrer de manière active pour que les jeunes Finistériens qui ne poursuivent pas une scolarité bilingue puissent
bénéficier le plus largement possible d’une initiation à la langue bretonne dans le cadre du temps scolaire. Ce dispositif
d’animation culturelle est mis en place à raison d’une heure/semaine par classe dans les écoles primaires publiques du
département qui en font la demande et dans les cas où l’Education nationale ne peut assurer cette initiation par le
recours à ses propres personnels. Il est financé par les Conseils départemental et régional et les communes concernées.
En vue de la prochaine rentrée scolaire, l’école des Rives de l’Ildut a formulé une demande d’intervention pour les
élèves de CE1 et CE2 qui a été validée pédagogiquement par l’Inspection académique. La participation de la commune
est estimée à 599,70 € pour l’année scolaire 2018-2019.
Afin de concrétiser l’adhésion de la commune à ce dispositif, le Conseil municipal approuve à l’unanimité la convention
de financement à intervenir entre le Conseil départemental et la commune et autorise Monsieur le Maire à signer la
convention et tout document relatif à ce dossier.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "https://edu.google.com/images/social_image.jpg"
decision = Decision.new(
  title: "Rythmes scolaires",
  category: "Education",
  description: "Le décret n°2017-1108 du 27 juin 2017 autorise, sous certaines conditions, une organisation du temps scolaire sur 4 jours",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "Le décret n°2017-1108 du 27 juin 2017 introduisant une nouvelle dérogation à l’organisation de la semaine scolaire dans
  les écoles maternelles et élémentaires publiques a été publié au journal officiel le 28 juin 2017. Il autorise, sous
  certaines conditions, une organisation du temps scolaire sur 4 jours. La demande de dérogation doit faire l’objet d’une
  démarche conjointe de la commune et du conseil d’école (le conseil d’école est composé de l’équipe enseignante, du
  maire et du conseiller municipal chargé des affaires scolaires, des représentants élus des parents d'élèves et du délégué
  départemental de l'éducation nationale).
  Pour mémoire, au regard des enjeux de ce dossier, la municipalité ne souhaitait pas modifier l’organisation de la
  semaine scolaire à la rentrée prochaine, préférant prendre le temps de la réflexion avant d’engager toute modification.
  Une enquête a été réalisée auprès des parents d’élèves : 72,41% des familles sont favorables à une organisation de la
  semaine scolaire sur 4 jours, contre 25,86 % pour les 4,5 jours (1,72% ne se prononcent pas). Par ailleurs, si le retour à 4
  jours devait avoir lieu, 62,07 % souhaitent sa mise en place dès la rentrée de septembre 2017.
  Au vu de ces résultats, le conseil d’école s’est réuni le 3 juillet et s’est prononcé favorablement au passage à la semaine
  scolaire de 4 jours à la rentrée 2017.
  La mairie, suivant l’avis du conseil d’école, a adressé à l’inspection académique une demande de modification de
  l’organisation de la semaine scolaire à la rentrée 2017-2018. Cette demande a reçu un avis favorable. En conséquence,
  dès septembre 2017, la demi-journée supplémentaire du samedi matin est supprimée et les temps d’activités
  périscolaires disparaissent. La semaine d’école est organisée sur quatre jours : les élèves ont classe les lundis, mardis,
  jeudis et vendredis de 8h45 à 12h00 et de 13h45 à 16h30. Après 16h30, ils sont accueillis à la garderie périscolaire ou
  participent aux Activités Pédagogiques Complémentaires.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "https://cdn.trendhunterstatic.com/thumbs/swiss-specialty-food-store.jpeg"
decision = Decision.new(
  title: "Demande de subvention auprès du département",
  category: "Finance",
  description: "Demande de subvention auprès du département au titre de l’aide au maintien du commerce et de l’artisanat de
  services en milieu rural",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "Par délibération n°2015/30 en date du 22 mai 2015, le Conseil municipal a approuvé l’opération de revitalisation du
  centre-bourg comprenant l’aménagement d’un ensemble mairie-agence postale-commerce-logements.
  La mairie, l’agence postale et le commerce sont réalisés sous maîtrise d’ouvrage communale. La conception des
  logements est confiée à Brest Métropole Habitat.
  Les opérations de création de commerces de proximité peuvent, sous certains critères, être subventionnées par le
  Conseil départemental. A ce titre, la création du commerce multi-services au centre-bourg pourrait bénéficier d’une
  aide du département.
  Après en avoir délibéré, le Conseil municipal décide à l’unanimité de solliciter une subvention auprès du Conseil
  départemental au titre de l’aide au maintien du commerce et de l’artisanat de services en milieu rural.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!

url = "https://www.cree.com/media/wysiwyg/environmental_management2.jpg"
decision = Decision.new(
  title: "Convention Territoire à Energie Positive pour la Croissance Verte (TEPCV)",
  category: "Environnement",
  description: "La commune a deposé une candidature pour la création d’un réseau de chaleur avec mise en place d’une chaudière à granulé bois.",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "Dans le cadre du projet d’aménagement du pôle mairie - agence postale – commerce - logements, le Conseil municipal,
  par délibération en date du 03/10/2016, a autorisé le Maire à solliciter une subvention auprès du Ministère de
  l’Environnement, de l’Energie et de la Mer au titre du programme des « Territoires à Energie Positive pour la Croissance
  Verte » (TEPCV). Monsieur le Maire informe l’Assemblée que la candidature déposée par la commune pour la création
  d’un réseau de chaleur avec mise en place d’une chaudière à granulé bois (chauffage mairie, logements et commerce) a
  été retenue. Le soutien financier au titre du fonds de financement de la transition énergétique pourrait atteindre 50 000
  €. Ce soutien financier sera formalisé par une convention entre le Ministère de l’Environnement et les porteurs de
  projets retenus. Après en avoir délibéré, le Conseil municipal autorise à l’unanimité Monsieur le Maire à signer ladite
  convention et tout document y afférant.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!

url = "https://celene.univ-orleans.fr/pluginfile.php/505833/course/overviewfiles/istock_000023265222_large_1.jpg"
decision = Decision.new(
  title: "Retrait de la délibération instituant la taxe de séjour",
  category: "Finance",
  description: "La loi NOTRe du 7 août 2015 rend obligatoire le transfert de la compétence « Promotion du tourisme » aux EPCI, à
  compter du 1er janvier 2019.",
  accepted_votes: rand(1..10),
  rejected_votes: rand(1..8),
  deferred_votes: rand(1..3),
  minutes: "La loi NOTRe du 7 août 2015 rend obligatoire le transfert de la compétence « Promotion du tourisme » aux EPCI, à
  compter du 1er janvier 2017. Le principal levier de financement de cette compétence est la taxe de séjour. Actuellement
  cette taxe est perçue par la commune.
  Par délibération en date du 28/09/2016, la Communauté de communes du Pays d’Iroise a instauré la taxe de séjour sur
  l’ensemble de son territoire. La taxe de séjour suit ainsi le transfert de compétence.
  En conséquence, après en avoir délibéré, le Conseil municipal décide à l’unanimité de retirer la délibération du 28
  janvier 2000 portant taxe de séjour sur le territoire communal. Cette décision prend effet à compter du 01/01/2017.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!




# FUTURE DECISIONS

url = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/International_School_of_Hamburg.jpg/1200px-International_School_of_Hamburg.jpg"
decision = Decision.new(
  title: "Sécurisation de l’école",
  category: "Education",
  description: "Demande de subvention au titre du Fonds Interministériel de Prévention de la
  Délinquance et de la Radicalisation.",
  result: 0,
  minutes: "La loi du 5 mars 2017 relative à la prévention de la délinquance a créé le Fonds Interministériel de Prévention de la
  Délinquance et de la Radicalisation (FIPDR). Celui-ci contribue au financement de certains équipements ou
  installations spécifiques destinés à la sécurisation des bâtiments et professionnels plus particulièrement exposés.
  A ce titre, le Préfet du Finistère a lancé un appel à projets départemental pour l’année 2017 portant sur les thèmes
  suivants : sécurisation des sites sensibles / sécurisation des écoles / équipements des policiers municipaux /
  vidéoprojection.
  A l’unanimité, le Conseil municipal autorise Monsieur le Maire à présenter auprès des services de la Préfecture un
  dossier de demande de subvention dans le cadre de l’appel à projets « FIPDR 2017 » en vue de l’installation à l’école
  d’une protection intrusion comprenant la mise en place d’une alarme spécifique d’alerte « attentat-intrusion ».",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!

url = "http://www.landezine.com/wp-content/uploads/2012/09/11-Shared-gardens-and-new-urban-density.jpg"
decision = Decision.new(
  title: "Mise en place d’un jardin partagé",
  category: "Environnement",
  description: "Proposition pour la mise en place d'un jardin partagé à proximité de l’Arméria.",
  result: 0,
  minutes: "Un jardin partagé sera prochainement mis en place à proximité de l’Arméria. Cet espace sera nettoyé à l’occasion de
la matinée verte du 8 avril avant d’être mis à la disposition des jardiniers amateurs qui pourront en disposer
librement dans le respect de l’environnement.",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://www.incimages.com/uploaded_files/image/970x450/getty_517129164_279516.jpg"
decision = Decision.new(
  title: "Renouvellement de la convention avec l’association Ener’gence",
  category: "Environnement",
  description: "Ener’gence, l’agence locale de l’énergie et du climat, propose un conseil en énergie partagé pour
  toutes les communes de moins de 15 000 habitants.",
  result: 0,
  minutes: "L’agence locale de l’énergie et du climat, propose un conseil en énergie partagé pour
  toutes les communes de moins de 15 000 habitants. L’idée de ce service est d’aider les petites et moyennes collectivités
  à faire des économies d’énergie (électricité, carburants, combustibles) et d’eau, et de les accompagner dans leur
  démarche de maîtrise de l’énergie. Le service inclut notamment le bilan annuel des consommations d’eau et d’énergie
  des bâtiments communaux et propose des optimisations pour améliorer la performance énergétique ou réduire les
  consommations. L’économie observée se situe entre 1,3 et 4 €/an/hab.
  La commune adhère depuis 2013 à Ener’gence. La convention qui lie la collectivité et l’association est arrivée à
  échéance le 31/08/2016. Il est proposé de la renouveler pour une durée de trois ans.
  Après en avoir délibéré, le Conseil municipal approuve à l’unanimité l’adhésion à Ener’gence à compter du 01/09/2016
  pour une durée de 3 ans. Le coût pour la période du 01/09/2016 au 31/08/2018 est de 888,26 € compte-tenu de l’aide
  financière de la Communauté de communes, et 1 110,33 € pour la période du 01/09/2018 au 31/08/2019, sous réserve
  d’actualisation.",
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
  )
decision.remote_photo_url = url
decision.save!



