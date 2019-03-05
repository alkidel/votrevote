# 6 décisions futures

url = "https://www.habitat-humanisme.org/wp-content/uploads/2016/11/MI_St-J-de-Br_-602x416.jpg"
decision = Decision.new(
  title: "Projet de maisons intergénérationnelles",
  category: "Urbanisme",
  description: "Livraison courant 2020",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "http://www.mairie-ascain.fr/images/cache/548f3f8f8772ab9761b165869ea12084_w640.jpg"
decision = Decision.new(
  title: "Modification (simplifiée) n°4 du PLU",
  category: "Environnement",
  description: "Libération d'espaces",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "https://www.saint-maur.com/fileadmin/_processed_/b/1/csm_decheteriebd-2_3e4cb462dc.jpg"
decision = Decision.new(
  title: "Exploitation d'une nouvelle déchèterie",
  category: "Environnement",
  description: "Traitement des déchets",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/societe/lecole-est-elle-assez-adaptee-aux-garcons-2658839/25577035-1-fre-FR/L-ecole-est-elle-assez-adaptee-aux-garcons.jpg"
decision = Decision.new(
  title: "Renouvellement Contrat - Enfance - Jeunesse 2019/2021",
  category: "Education",
  description: "Contrats relevant du nettoyage des classes",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://www.profession-sport-loisirs.fr/sites/national/files/styles/large/public/actualites/2017-02-10/ea2.jpg"
decision = Decision.new(
  title: "Emploi d’un éducateur sportif",
  category: "Education",
  description: "Suite aux déboires judiciaires de notre ancien éducateur sportif, nous devons en trouver un plus adapté à notre ville",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!


url = "https://www.cree.com/media/wysiwyg/environmental_management2.jpg"
decision = Decision.new(
  title: "Participation financière pour la destruction des nids de frelons",
  category: "Environnement",
  description: "Les frelons reviennent en force, ils faut s'en occuper rapidement",
  result: 0,
  minutes: '',
  council_date: NEXT_COUNCIL_DATE,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

