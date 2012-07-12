class Example < ActiveRecord::Base
  scope :for_reason, lambda {|r| joins(:reasons).where("examples_reasons.reason_id = ?", r)}

  attr_accessible :excerpt, :headline, :link, :reasons, :reason_ids
  has_and_belongs_to_many :reasons

  validates_presence_of :headline
  validates_presence_of :excerpt
  validates_presence_of :link

  def link
   return "http://#{self[:link]}" if self[:link] !~ /^http:\/\//
   self[:link]
  end

  def self.sample history, reason_id
    filter = !reason_id.nil? ? Example.for_reason(reason_id) : Example

    example = filter.all.sample if history.empty?
    example = filter.find(:first, :conditions => ['examples.id not in (?)', history], :order => 'RANDOM()') if example.nil?
    example = filter.all.sample if example.nil?

    logger.info "sampled out example #{example}"
    logger.error "could not find any examples. Are there any examples in the database?" if example.nil?
    example
  end

end
