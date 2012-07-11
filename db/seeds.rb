# encoding: UTF-8

require 'factory_girl'

Reason.delete_all
r1 = FactoryGirl.create(:reason, :label => 'corruption')
r2 = FactoryGirl.create(:reason, :label => 'collusion')
r3 = FactoryGirl.create(:reason, :label => 'transparence')
r4 = FactoryGirl.create(:reason, :label => 'vision')
r5 = FactoryGirl.create(:reason, :label => 'gestion')

Example.delete_all
FactoryGirl.create(:example, :headline => "Charest est accusé de collusion.", :reasons => [r1, r2])
FactoryGirl.create(:example, :headline => "Charest aura pris 2 ans avant de déclencer la commission Charbonneau.", :link => "http://www.lefigaro.fr")
FactoryGirl.create(:example, :headline => "Le PLQ est financé par la mafia.", :link => "http://ledevoir.com", :reasons => [r2, r3, r4])

Admin.delete_all
FactoryGirl.create(:admin, :email => 'cawel00@yahoo.com', :password => "fred23")
FactoryGirl.create(:admin, :email => 'matthieutc@gmail.com', :password => "fred23")
