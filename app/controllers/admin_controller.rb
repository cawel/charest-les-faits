class AdminController < ApplicationController
  before_filter :authenticate_admin!

  layout 'admin/application'

end
