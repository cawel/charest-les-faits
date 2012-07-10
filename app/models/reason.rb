class Reason < ActiveRecord::Base
  attr_accessible :label
  has_many :examples
end
