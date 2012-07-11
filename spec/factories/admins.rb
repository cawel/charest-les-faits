# encoding: UTF-8

FactoryGirl.define do

  sequence(:email)    { |n| "admin_#{n}@example.com" }

  factory :admin do
    email             { FactoryGirl.generate(:email) }
    password          "fred23"
  end

end
