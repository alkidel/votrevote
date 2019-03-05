# FORMER DECISIONS

url = "https://unsplash.com/photos/OyCl7Y4y0Bk"
decision = Decision.new(
  title: "Contribution aux dépenses de fonctionnement de l'école Notre-Dame",
  category: "Education",
  description: "Proposition de versement de la contribution obligatoire de la ville à hauteur de 67 000€ aux frais de fonctionnement de l'école Notre-Dame, prévu au compte 6558 du budget 2019",
  accepted_votes: rand(6..10),
  rejected_votes: rand(5..10),
  deferred_votes: rand(2..10),
  minutes: '',
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://unsplash.com/photos/MH-yBNIpryc"
decision = Decision.new(
  title: "Contribution aux dépenses de fonctionnement du Groupe Scolaire La CLAIRIERE",
  category: "Education",
  description: "Groupe Scolaire LA CLAIRIERE :
- Proposition d’installation de serrures électriques sur les portails des écoles maternelle et
élémentaire, de portiers vidéo avec l’option interface pour appel sur smartphone,
l’option alimentation secourue, le contrôle des accès aux écoles avec système de
badges marque Intratone,
Estimation ………………………………… 37.402,60 € hors taxes",
  accepted_votes: rand(6..10),
  rejected_votes: rand(5..10),
  deferred_votes: rand(2..10),
  minutes: "LE CONSEIL MUNICIPAL
–Ayant entendu l'exposé du Rapporteur,
–Vu la possibilité d’obtenir une aide concernant les travaux de
sécurisation des accès aux écoles au titre du Fonds de Soutien à
l’Investissement Public Local (F.S.I.P.L.) pour 2017,
–Vu la nécessité de demander une dérogation de commencement anticipé
des travaux pour la sécurisation rapide des accès aux écoles,
–Après en avoir délibéré,
DÉCIDE
- d‘approuver les travaux de sécurisation des accès au groupe scolaire
(LA CLAIRIERE, MARNE YEUSE), estimés à 32.402,60
euros hors taxes,
– de solliciter une subvention au titre du Fonds de Soutien à l’Investissement Public
Local (F.S.I.P.L.) à hauteur de 30 % du montant hors taxes des travaux.
– de demander une dérogation de commencement anticipé des travaux pour la
sécurisation rapide des accès aux écoles,
- d’attester que la commune récupère la taxe sur la valeur ajoutée (TVA) par
l’intermédiaire du Fonds de Compensation de la Taxe sur la Valeur Ajoutée (FCTVA),
- d’indiquer que son n° SIRET est le suivant : 211 703 061 000 13,
- d’autoriser Monsieur le Député-Maire ou Monsieur le Premier Adjoint agissant par
délégation, à signer toutes pièces relatives au dossier de demande de subvention.
– d’imputer la totalité de la dépense sur le budget primitif 2019",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://medias.laprovence.com/mcg51AUemHbhtJRHAxU7_lgvhzM=/850x575/top/smart/ce1771eae7be4efd81a80ead791ece76/20171215_1_5_1_1_0_obj16361193_1.jpg"
decision = Decision.new(
  title: "DÉSAFFECTATION DE L’ENSEMBLE IMMOBILIER « ÉCOLE JULES FERRY ",
  category: "Education",
  description: "La Ville est propriétaire d’un ensemble immobilier dit « École Jules
FERRY », actuellement composé de l’école maternelle et de l’école élémentaire,
cadastré section AK n° 177 et n° 178 d’une surface de 6 946 m².
Dans le cadre d’une gestion patrimoniale économe, la Ville souhaite procéder à la
cession de l’ensemble immobilier précité, inclus le terrain d’assiette.
En préalable, il convient de constater la désaffectation.
Conformément à la réglementation en vigueur, toute décision de désaffectation de
biens à usage scolaire nécessite l’avis préalable du représentant de l’Etat dans le
département.
Par courrier en date du 5 octobre 2016, Monsieur le Préfet a rendu un avis favorable,
émis après consultation de Monsieur le Directeur Académique des services de
l’Education Nationale.
Fort de cet avis, il est proposé aux membres du Conseil Municipal de constater la
désaffectation du domaine public communal de l’ensemble immobilier dit « École
Jules FERRY », ainsi que du terrain d’assiette.",
  accepted_votes: rand(6..10),
  rejected_votes: rand(5..10),
  deferred_votes: rand(2..10),
  minutes: "LE CONSEIL MUNICIPAL

- Ayant entendu l’exposé du Rapporteur,
- Vu le Code Général des Collectivités Territoriales,
- Vu le Code Général de la Propriété des Personnes Publiques,
- Vu la circulaire interministérielle NOR : REFB9500025C du 25 août 1995,
- Vu l’avis favorable de Monsieur le Préfet et de Monsieur le Directeur
Académique des services de l’Éducation Nationale,
- Après en avoir délibéré,
DÉCIDE
- de constater la désaffectation du domaine public communal, de l’ensemble
immobilier dit « École Jules FERRY », actuellement composé de l’école maternelle
et de l’école élémentaire, cadastré section AK n° 177 et n° 178, ainsi que le terrain
d’assiette.
- d’autoriser Monsieur le Député-Maire ou Monsieur le Premier Adjoint, agissant par
délégation, à effectuer toutes les formalités nécessaires et à signer tous les
documents utiles à l’application de la présente délibération.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://unsplash.com/photos/vP3G46hrjno"
decision = Decision.new(
  title: "ENLEVEMENT DES ORDURES MENAGERES
MODIFICATION DES FREQUENCES DE COLLECTE"
  category: "Environnement",
  description: "Il vous est proposé de diminuer les fréquences des collectes des ordures ménagères (bacs à
couvercle vert), à compter du 1er janvier 2019.
Jusqu'à présent, du 16 septembre au 14 juin, les collectes étaient effectuées quatre jours sur
sept et du 15 juin au 15 septembre, cinq jours sur sept.
Il a pu être constaté, compte-tenu des collectes effectuées, que la période estivale peut être
réduite et que le nombre de collectes en période autre peut être diminué.
Il est donc proposé que soit ainsi établie la collecte des ordures ménagères des bacs à
couvercle vert comme suit :
· du 1er septembre au 30 juin : trois jours par semaine
· du 1er juillet au 31 août : 5 jours par semaine",
  accepted_votes: rand(6..10),
  rejected_votes: rand(5..10),
  deferred_votes: rand(2..10),
  minutes: "Le conseil municipal décide que la fréquence des collectes des ordures ménagères (bacs à couvercles verts) soit ramenée
à trois jours par semaine, au lieu de quatre jours actuellement, pour la période du
1
er
septembre au 30 juin, à compter du 1er janvier 2019.",
  council_date: DECISIONS_PAST.sample,
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!





# FUTURE DECISIONS

url = "https://unsplash.com/photos/RkIsyD_AVvc"
decision = Decision.new(
  title: "DÉCHETS MENAGERS – VERRE : FOURNITURE ET POSE DE COLONNES
ENTERRÉES – CONVENTION D'OCCUPATION DU DOMAINE PUBLIC, DOMAINE
PRIVÉ",
  category: "Environnement",
  description: "Ces colonnes devant être implantées sur le domaine public, il convenait de conclure
une convention d'occupation du domaine public communal, pour chaque implantation.
Le 29 juin 2018, le Conseil Municipal a pris une délibération en ce sens.
Par courrier en date du 07 novembre 2018, Monsieur BOISROBERT, Architecte en chef
des Bâtiments de France, a émis des réserves sur certains lieux d’implantation qui
avaient été proposés par la CARA. Ces sites ont été revus et approuvés par Monsieur
l’Architecte des Bâtiments de France lors d’une réunion avec visite des sites
le 27 novembre 2018.
Il est demandé à l’Assemblée délibérante de valider les nouvelles implantations de ces
dispositifs de collecte enterrés.
L'opération sera réalisée sous maîtrise d'ouvrage de la CARA, celle-ci pouvant obtenir
des subventions pour le génie civil et la pose.
Un fonds de concours sera sollicité de la commune, à hauteur de 50 % du coût
résiduel du génie civil. ",
  result: 0,
  minutes: '',
  council_date: Date.new(2019, 03, 12),
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://unsplash.com/photos/BNvk1zqEAjc"
decision = Decision.new(
title: "ACCEPTATION DES DONS AU PROFIT DU MUSEE
POUR L'ANNEE 2018",
category: "Finance",
description: "Il vous est proposé d'accepter les dons d'objets effectués au profit du musée de la ville, au cours de
l'année 2018.
- les dons sont inventoriés au musée, au cours de l'année 2018, sous les numéros MR
2009.0.1, MR 2009.1.1., MR 2009.2.1., MR 2009.3.1., MR 2009.3.2., MR 2009.4.1., MR 2009.5.1., MR
2009.5.2., MR 2009.5.3., MR 2009.5.4., MR 2009.5.5., MR 2009.5.6., MR 2009.6.1., MR 2009.6.2.,
MR 2009.6.3., MR 2009.6.4., MR 2009.7.1., MR 2009.8.1., MR 2009.8.2., MR 2009.8.3., MR
2009.9.1., ainsi que différentes documentations, conformément à la liste jointe en annexe.",
result: 0,
minutes: "",
council_date: Date.new(2019, 03, 12),
town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!

url = "https://unsplash.com/photos/fV16wyjGCmI"
decision = Decision.new(
  title: "OUVERTURE DE CRÉDITS POUR L’EXERCICE 2019
  (SECTION INVESTISSEMENT) ",
  category: "Finance",
  description: "En application de l’article L.1612.1 du Code Général des Collectivités Territoriales, le
  Maire, dans l’attente du vote du Budget Primitif, peut sur autorisation du Conseil
  Municipal précisant le montant et l’affectation des crédits, engager, liquider et
  mandater des dépenses d’investissement, dans la limite du quart des crédits
  ouverts au budget de l’exercice précédent, non compris les crédits afférents au
  remboursement de la dette.
  Les crédits correspondants sont inscrits au Budget Primitif lors de son adoption.
  Pour permettre dès le début de l’année 2019, l’engagement des travaux, il est
  proposé l’ouverture de crédits d’investissement, au titre de l’exercice 2019.",
  result: 0,
  minutes: "",
  council_date: Date.new(2019, 03, 12),
  town_id: Town.first.id
)
decision.remote_photo_url = url
decision.save!
