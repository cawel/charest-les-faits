class AdminController < ApplicationController
  before_filter :authenticate_admin!

  layout 'admin/application'

  def current_ability
    @current_ability ||= Ability.new(current_admin)
  end


end
