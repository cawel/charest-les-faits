class ApplicationController < ActionController::Base
  before_filter :set_locale
  protect_from_forgery

  def index
     random_id = rand(Example.count)
     @example = Example.first(:conditions => [ "id >= ?", random_id])
     @example = Example.new({:headline => 'Please create an example'}) if @example.nil?
  end

  private

  def set_locale
    I18n.locale = "fr"
  end
end
