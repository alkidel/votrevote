"Participation financière pour la destruction des nids de frelons"
"Emploi d’un éducateur sportif"
"Renouvellement Contrat - Enfance - Jeunesse 2019/2021"
"Exploitation d'une nouvelle déchèterie"
"Modification (simplifiée) n° 4 du PLU"
"Projet de maisons intergénérationnelles"

DECISIONS_CATEGORY = ["Education", "Environment", "Works", "Commerce", "Transport", "Waste"]

  url = "https://www.habitat-humanisme.org/wp-content/uploads/2016/11/MI_St-J-de-Br_-602x416.jpg"
  decision = Decision.new(
    title: "Projet de maisons intergénérationnelles",
    category: "Works",
    description: "Livraison courant 2020",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

  url = "http://www.mairie-ascain.fr/images/cache/548f3f8f8772ab9761b165869ea12084_w640.jpg"
  decision = Decision.new(
    title: "Modification (simplifiée) n° 4 du PLU",
    category: "Environment",
    description: "Libération d'espaces",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

  url = "https://www.saint-maur.com/fileadmin/_processed_/b/1/csm_decheteriebd-2_3e4cb462dc.jpg"
  decision = Decision.new(
    title: "Exploitation d'une nouvelle déchèterie",
    category: "Environment",
    description: "Traitement des déchets",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

  url = "https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/societe/lecole-est-elle-assez-adaptee-aux-garcons-2658839/25577035-1-fre-FR/L-ecole-est-elle-assez-adaptee-aux-garcons.jpg"
  decision = Decision.new(
    title: "Renouvellement Contrat - Enfance - Jeunesse 2019/2021",
    category: "Education",
    description: "Contrats relevant du nettoyage des classes",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

    url = "https://www.profession-sport-loisirs.fr/sites/national/files/styles/large/public/actualites/2017-02-10/ea2.jpg"
  decision = Decision.new(
    title: "Emploi d’un éducateur sportif",
    category: "Education",
    description: "Suite aux déboires judiciaires de notre ancien éducateur sportif, nous devons en trouver un plus adapté à notre ville",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

        url = "https://mvistatic.com/photosmvi/2018/10/04/P18322720D3532934G.jpg"
  decision = Decision.new(
    title: "Participation financière pour la destruction des nids de frelons",
    category: "Environment",
    description: "Les frelons reviennent en force, ils faut s'en occuper rapidement",
    result: 0,
    minutes: '',
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..2)
        )
      vote.save!
    end

    decision = Decision.new(
   title: "Lancement carte de fidélité",
   category: "Commerce",
   description: "Discussion avec le cabinet de conseil Alkiconsulting sur les conditions de lancement de la carte de fidélité mon-petit-commercant",
   result: 0,
   minutes: "",
   council_date: Date.new(2019, 03, 12),
   town_id: Town.first.id
 )
 decision.remote_photo_url = "https://www.qoodos.fr/wp-content/uploads/2015/06/loyalty-cards1-1024x768.jpg"
 decision.save!
 User.all.each do |user|
     vote = Vote.new(
       user_id: user.id,
       decision_id: decision.id,
       result: rand(0..2)
       )
     vote.save!
   end


