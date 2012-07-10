class Example < ActiveRecord::Base
  attr_accessible :excerpt, :headline, :link, :reasons
  has_and_belongs_to_many :reasons

  validates_presence_of :headline
  validates_presence_of :excerpt
  validates_presence_of :link
end
