class Example < ActiveRecord::Base
  scope :for_reason, lambda {|r| joins(:reasons).where("examples_reasons.reason_id = ?", r)}
  scope :approved, where(:approved => true)

  attr_accessible :excerpt, :headline, :link, :reasons, :reason_ids, :published_at
  has_and_belongs_to_many :reasons

  validates_presence_of :headline
  validates_presence_of :excerpt
  validates_presence_of :link

  def link
   return "http://#{self[:link]}" if self[:link] !~ /^http:\/\//
   self[:link]
  end

  def self.sample history, reason_id
    filter = !reason_id.nil? ? Example.approved.for_reason(reason_id) : Example.approved

    example = filter.all.sample if history.empty?
    example = filter.find(:first, :conditions => ['examples.id not in (?)', history], :order => 'RANDOM()') if example.nil?
    if example.nil?
      example = filter.all.sample 
      history.clear
    end

    logger.info "sampled out example #{example}"
    logger.error "could not find any examples. Are there any examples in the database?" if example.nil?
    example
  end

end
