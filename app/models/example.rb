class Example < ActiveRecord::Base
  attr_accessible :excerpt, :headline, :link, :reasons, :reason_ids
  has_and_belongs_to_many :reasons

  validates_presence_of :headline
  validates_presence_of :excerpt
  validates_presence_of :link

  def link
   return "http://#{self[:link]}" if self[:link] !~ /^http:\/\//
   self[:link]
  end
end
