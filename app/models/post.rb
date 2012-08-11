class Post < ActiveRecord::Base
  attr_accessible :content, :title

  before_create :set_permlink

  default_scope :order => 'created_at DESC'

  def set_permlink
    self.permlink = title.parameterize
  end

  def to_param
    permlink
  end
end
