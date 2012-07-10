class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
     random_id = rand(Example.count)
     @example = Example.first(:conditions => [ "id >= ?", random_id])
     @example = Example.new({:headline => 'Please create an example'}) if @example.nil?
  end

end
