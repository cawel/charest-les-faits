# encoding: UTF-8

require 'factory_girl'

Reason.delete_all
r1 = FactoryGirl.create(:reason, :label => 'Corruption')
r2 = FactoryGirl.create(:reason, :label => 'Collusion')
r3 = FactoryGirl.create(:reason, :label => 'Manque de transparence')
r4 = FactoryGirl.create(:reason, :label => 'Manque de vision')
r5 = FactoryGirl.create(:reason, :label => 'Mauvaise gestion')

Example.delete_all
FactoryGirl.create(:example, :headline => "Charest est accusé de collusion.", :reasons => [r1, r2], :approved => true)
FactoryGirl.create(:example, :headline => "Charest aura pris 2 ans avant de déclencher la commission Charbonneau.", :link => "http://www.lefigaro.fr", :approved => true)
FactoryGirl.create(:example, :headline => "Le PLQ est financé par la mafia.", :link => "http://ledevoir.com", :reasons => [r2, r3, r4], :approved => true)
FactoryGirl.create(:example, :headline => "Jean Charest a fait fondre le bonhomme de neige de la place public.", :link => "http://ledevoir.com", :excerpt => "Alors que le soleil plombait et que la promenade s'en allait de part et d'autres. Le bonhomme de neige a fondu, comme une glace sur la grille d'un BBQ. C'est pour dire, seulement 2 ans de ça déjà, et je m'en souviens comme si tout s'était déroulé ce matin même.", :reasons => [r2, r3, r4], :approved => true)

Admin.delete_all
FactoryGirl.create(:admin, :email => 'cawel00@charest-la-honte.com', :password => "youhavelostcontrol")
FactoryGirl.create(:admin, :email => 'matthieutc@charest-la-honte.com', :password => "youhavelostcontrol")
