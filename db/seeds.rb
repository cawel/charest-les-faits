# encoding: UTF-8

require 'factory_girl'

Reason.delete_all
r1 = FactoryGirl.create(:reason, :label => 'Finances publiques')
r6 = FactoryGirl.create(:reason, :label => 'Environnement')
r3 = FactoryGirl.create(:reason, :label => 'Transparence')
r2 = FactoryGirl.create(:reason, :label => 'Collusion')
r4 = FactoryGirl.create(:reason, :label => 'Débat public')
r5 = FactoryGirl.create(:reason, :label => 'Abus de pouvoir')

Example.delete_all
FactoryGirl.create(:example, :headline => "Jean Charest a affirmé qu'il ne tiendra pas compte du rapport de l'unité permanente anticorruption", :excerpt => "Lors d'une conférence de presse convoquée pour vanter tous les gestes posés par son gouvernement afin de contrer la corruption et la collusion (création de l'Unité permanente anticorruption et adoption de lois et de règlements, par exemple), Jean Charest réduit le rapport Duchesneau, qu'il n'a pas lu, à des allégations. Il est hors de question pour lui de commenter le rapport car, affirme-t-il, «le politique ne va pas mettre le nez là-dedans». Du coup, il met le feu aux poudres chez ses adversaires, qui se déchaînent et en appellent à la révolte populaire.", :link => "http://www.ledevoir.com/politique/quebec/339456/le-revirement-de-l-annee-2011-la-commission-d-enquete", :published_at => Date.civil(2012, 1, 3), :reasons => [r3, r4], :approved => true)

FactoryGirl.create(:example, :headline => "Pendant plus de 2 ans, le gouvernement Charest a refusé une commission d'enquête sur l'industrie de la construction", :excerpt => "Jean Charest et son ministre de la Sécurité publique d'alors, Jacques Dupuis, rejettent sans relâche l'idée d'une commission d'enquête. «Laissons les policiers travailler», martèle à l'Assemblée nationale le ministre Dupuis. «Une commission d'enquête si nécessaire, mais pas nécessairement une commission d'enquête», insiste de son côté M. Charest. Les mois suivants apportent leur lot de scandales, d'octrois de contrats et d'allégations de financement douteux des partis politiques. La grogne populaire augmente, le monde politique nage en pleine tourmente, mais le gouvernement libéral ne cède pas.", :link => "http://www.ledevoir.com/politique/quebec/339456/le-revirement-de-l-annee-2011-la-commission-d-enquete", :published_at => Date.civil(2012, 1, 3), :reasons => [r3, r4], :approved => true)

FactoryGirl.create(:example, :headline => "Le gouvernement Charest tient secret les négociations de libre-échange avec l'Union européenne", :excerpt => "Ce qui est en cause dans ces négociations, c’est moins l’idée du libre-échange que la manière de négocier sans débat public, comme si seuls de grands technocrates pouvaient comprendre les enjeux en cause. On dit qu’une élection est l’occasion pour un gouvernement de rendre des comptes. Quels comptes rendra donc Jean Charest sur cette négociation avec l’Union européenne ? Aucun, car il prétendra être tenu au secret.", :link => "http://www.ledevoir.com/politique/quebec/354647/libre-echange-le-secret", :reasons => [r3, r4], :published_at => Date.civil(2012, 7, 16), :approved => true)

FactoryGirl.create(:example, :headline => "Le gouvernement Charest vend à rabais les permis d'exploitation pétrolière", :excerpt => "Actuellement, Québec touche environ 1 million de dollars pour les 10 millions d'hectares sous permis. Mais les commissaires du Bureau d'audiences publiques sur l'environnement (BAPE) ont clairement souligné dans leur rapport que le gouvernement devrait recevoir beaucoup plus: «En se référant au prix moyen de 500 $/hectare de l'Alberta, le Québec aurait pu percevoir environ 5 milliards de dollars pour les 10 millions d'hectares sous permis.» Pour en tirer des milliards à verser au trésor public, il aurait fallu procéder par une attribution aux enchères, comme cela se fait en Colombie-Britannique, en Alberta et en Saskatchewan. Dans ces provinces, «le marché détermine la valeur de chaque parcelle selon les bénéfices attendus de son exploitation», ont noté les commissaires du BAPE.", :link => "http://www.ledevoir.com/economie/actualites-economiques/321058/exploration-et-exploitation-gaziere-et-petroliere-quebec-revise-les-droits-et-permis", :approved => true, :reasons => [r1, r6], :published_at => Date.civil(2012, 4, 14))

FactoryGirl.create(:example, :headline => "Le gouvernement Charest impose aux étudiants une loi spéciale qui bafoue les chartes des droits du Québec", :excerpt => "La toute récente loi 78 est sans doute l'une des lois spéciales québécoises les plus (sinon la plus) lourdement attentatoires aux droits fondamentaux protégés par les chartes canadienne et québécoise. Que l'on analyse le texte sous l'angle de la liberté d'association et du droit d'agir collectivement, de la liberté de conscience, de la liberté d'expression ou du droit de manifester pacifiquement, presque tous les articles de cette nouvelle loi soulèvent, à leur face même, de sérieux doutes quant à leur compatibilité avec les chartes applicables au Québec.", :link => "http://www.lapresse.ca/le-soleil/opinions/points-de-vue/201205/23/01-4527774-loi-78-un-odieux-detournement-de-lesprit-des-chartes.php", :approved => true, :reasons => [r4, r5], :published_at => Date.civil(2012, 5, 24))

FactoryGirl.create(:example, :headline => "Selon le rapport de l'upac, il y a collusion entre le gouvernement Charest et l'industrie de la construction", :excerpt => "Selon l'Unité anticollusion, des ingénieurs de firmes de génie-conseil, mais aussi des employés du ministère, favorisent des entrepreneurs en leur fournissant des informations privilégiées. Ils leur indiqueraient, par exemple, qu'un contrat où l'on prévoit 1000 chargements de terre contaminée n'en nécessitera véritablement qu'une centaine.", :link => "http://www.radio-canada.ca/nouvelles/National/2011/09/14/003-unite-anticollusion-rapport.shtml", :approved => true, :reasons => [r1, r2], :published_at => Date.civil(2011, 9, 17))

FactoryGirl.create(:example, :headline => "Charest veut avoir droit de regard sur la nomination des juges de la Cour du Québec", :excerpt => "À son arrivée au pouvoir, Jean Charest a modifié la procédure de nomination des juges en permettant au Conseil des ministres d'avoir accès à la liste des candidats. Le ministre de la Justice, qui gardait cette liste pour lui auparavant, est maintenant exposé aux pressions politiques de ses collègues.", :link => "http://www.ledevoir.com/politique/quebec/286990/nomination-des-juges-charest-a-change-la-donne", :approved => true, :reasons => [r5], :published_at => Date.civil(2010, 4, 15))

FactoryGirl.create(:example, :headline => "Le gouvernement exploite la procédure du bâillon pour passer plusieurs lois importantes", :excerpt => "Doit-on s'alarmer de voir le gouvernement Charest imposer le bâillon pour permettre l'adoption de ses projets de loi? On pourrait se contenter de hausser les épaules tellement le recours à cette mesure est chose quasi routinière à Québec. Pourtant, il y a lieu de s'inquiéter, car, encore une fois, les projets les plus importants du gouvernement seront adoptés à toute vapeur, sans examen et débat en profondeur.", :link => "http://www.ledevoir.com/non-classe/43006/plus-ca-change", :approved => true, :reasons => [r5, r4], :published_at => Date.civil(2003, 12, 16))

FactoryGirl.create(:example, :headline => "Jean Charest choisit de faire campagne durant les vacances d'été", :excerpt => "L'essentiel de la campagne se déroulera dans une période où la politique ne préoccupe guère la population, une perspective rassurante pour un gouvernement qui n'a pas envie de faire campagne sur un bilan de neuf ans.", :link => "http://www.lapresse.ca/actualites/quebec-canada/politique-quebecoise/201207/10/01-4542539-elections-aux-urnes-le-4-septembre.php", :approved => true, :reasons => [r4], :published_at => Date.civil(2012, 07, 11))

FactoryGirl.create(:example, :headline => "Les Libéraux ont cédé au secteur privé l'ensemble des permis d'exploration gazière et pétrolière", :excerpt => "Avant de céder au secteur privé l'ensemble des permis d'exploration gazière et pétrolière qu'elle possédait, Hydro-Québec prévoyait investir plus de 330 millions de dollars entre 2002 et 2010 afin d'évaluer le potentiel en énergies fossiles du sous-sol québécois et du golfe du Saint-Laurent. Les libéraux ont toutefois mis fin aux activités de la division Pétrole et gaz de la Société d'État, un choix qui revient à avoir bradé les ressources en hydrocarbures du Québec, dénonce l'opposition.", :link => "http://www.ledevoir.com/politique/quebec/316842/hydro-voulait-continuer-a-explorer", :approved => true, :reasons => [r1, r6], :published_at => Date.civil(2011, 02, 15))

FactoryGirl.create(:example, :headline => "Le gouvernement Charest ne fait pas assez pour la décontamination des sites miniers abandonnés", :excerpt => "Québec a aussi 3,2 milliards de «passif environnemental», des dépenses importantes auxquelles il ne pourra échapper. Or, dans les dernières années, il n'a dépensé que 108 millions pour ces obligations - en bonne partie des travaux de décontamination. Les ministères et organismes ont également ciblé des travaux prioritaires pour un total de 1,4 milliard dans les trois prochaines années, des factures que le gouvernement devra ajouter à ses dépenses.", :link => "http://affaires.lapresse.ca/economie/quebec/201203/02/01-4501637-quebec-sous-evalue-sa-dette-de-plusieurs-milliards.php", :approved => true, :reasons => [r6], :published_at => Date.civil(2012, 3, 2))

FactoryGirl.create(:example, :headline => "Une enquête indépendante affirme que le Plan Nord n'est pas rentable", :excerpt => "Les calculs de l'IRIS mènent à un manque à gagner de 2,3 G$ pour le trésor québécois, qui correspond à la différence entre les 16,5G$ en dépenses publiques moins 14,2 G$ en recettes. A ce montant, l’IRIS ajoute 6,15G$ en nouvelles dépenses publiques reliées à l’augmentation des coûts dans les services de santé, d’éducation, et d’infrastructures municipales qui vont résulter de l’augmentation de population dans les régions du Plan Nord. D’où sa conclusion que le Plan Nord fera perdre 8,5 G$ au trésor québécois, tandis que pour Secor, il générera un surplus de 15G$.\nL’IRIS est un organisme sans but lucratif qui se veut indépendant, tandis que Secor est une firme de consultant à rayonnement international ayant réalisé de nombreux mandats pour le gouvernement Charest. L’ ancien PDG de Secor, Raymond Bachand, est actuellement ministre des Finances du gouvernement Charest.", :link => "http://www.lesaffaires.com/dossier/plan-nord/guerre-de-chiffres-sur-le-plan-nord/542230", :approved => true, :reasons => [r1, r6], :published_at => Date.civil(2012, 3, 16))

FactoryGirl.create(:example, :headline => "Le gouvernement Charest accorde des allègements fiscaux inexplicables aux entreprises minières", :excerpt => "Le Vérificateur général Renaud Lachance, dans un rapport accablant sur la gestion des mines par Québec, déplorait par exemple qu'entre 2002 et 2008, 14 entreprises minières n'aient versé aucun droit alors qu'elles cumulaient des «valeurs brutes de production annuelle» de 4,2 milliards de dollars.", :link => "http://www.ledevoir.com/politique/quebec/257268/des-allegements-fiscaux-pour-l-industrie-miniere", :approved => true, :reasons => [r1, r6], :published_at => Date.civil(2009, 6, 30))

FactoryGirl.create(:example, :headline => "Le gouvernement Charest reconduit des subventions exorbitantes pour Rio Tinto Alcan", :excerpt => "Les privilèges accordées en 1962, et lors de différentes ententes avec le gouvernement et Hydro-Québec, équivalent donc à une subvention de 587 millions $ par année.\nCe montant réparti sur les 7 000 travailleurs à l’emploi de RTA au Québec équivaut à une subvention annuelle de 83 833 $ par travailleur, soit plus que le salaire annuel moyen des travailleurs !\nEn trente ans (1980-2010), cette subvention à RTA a presque doublé passant de 333 millions $ à 587$ millions, alors que le nombre d’emplois a diminué de près de la moitié, passant de 12 646 à environ 7 000.", :link => "http://www.lautjournal.info/default.aspx?page=3&NewsId=3665", :approved => true, :reasons => [r1], :published_at => Date.civil(2012, 4, 20))

FactoryGirl.create(:example, :headline => "À la demande d'un lobbyiste, Charest fournit aux écoles des curieux tableaux blancs interactifs au coût de 240 millions", :excerpt => "Dans son discours inaugural du 23 février 2011, Jean Charest a lancé, à la surprise générale, un programme de 240 millions de dollars en cinq ans pour procurer des tableaux blancs interactifs (TBI) à toutes les classes des écoles primaires et secondaires. Pourquoi cette soudaine priorité en période de restrictions budgétaires? s'est demandé le milieu scolaire. Un an plus tard, on constate que la grande majorité des TBI sont commandés d'une façon inhabituelle à un fournisseur quasi unique: Smart Technologies, dont le lobbyiste est un ancien membre du cabinet de M. Charest.", :link => "http://www.lapresse.ca/actualites/quebec-canada/education/201202/29/01-4501174-une-ombre-au-tableau-blanc.php", :approved => true, :reasons => [r1, r2], :published_at => Date.civil(2012, 3, 1))

FactoryGirl.create(:example, :headline => "Dans son rapport, le vérificateur général critique sévèrement la ministre Courchesne dans sa gestion d'un programme d'infrastructures sportives", :excerpt => "Michel Samson a démontré que les instances politiques ont choisi les projets à subventionner, alors que ce sont des fonctionnaires qui doivent normalement procéder à ces sélections. Le rapport déplore le manque de rigueur du ministère dans la sélection des projets et l'attribution des subventions. M. Samson reproche à la ministre d'avoir choisi de façon arbitraire et discrétionnaire des projets, soulignant que rien ne prouve que les projets retenus étaient les meilleurs.", :link => "http://www.radio-canada.ca/nouvelles/Politique/2012/06/06/002-quebec-courchesne-verificateur.shtml", :approved => true, :reasons => [r5], :published_at => Date.civil(2012, 6, 6))

Admin.delete_all
raise "specify admin password as an environment variable" if ENV['ADMIN_PASSWORD'].blank? 
FactoryGirl.create(:admin, :email => 'cawel@charest-les-faits.com', :password => ENV['ADMIN_PASSWORD'])
FactoryGirl.create(:admin, :email => 'matthieutc@charest-les-faits.com', :password => ENV['ADMIN_PASSWORD'])

puts "DB is now seeded."
