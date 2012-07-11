# encoding: UTF-8

require 'factory_girl'
# FactoryGirl.find_definitions

Example.delete_all
FactoryGirl.create(:example, :headline => "Charest est accusé de collusion.")
FactoryGirl.create(:example, :headline => "Charest aura pris 2 ans avant de déclencer la commission Charbonneau.", :link => "http://www.lefigaro.fr")
FactoryGirl.create(:example, :headline => "Le PLQ est financé par la mafia.", :link => "http://ledevoir.com")
