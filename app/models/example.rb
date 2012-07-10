class Example < ActiveRecord::Base
  attr_accessible :excerpt, :headline, :link, :reasons
  has_and_belongs_to_many :reasons
end
