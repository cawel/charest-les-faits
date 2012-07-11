# encoding: UTF-8

class Admin::ExamplesController < AdminController
  load_and_authorize_resource

  def index
    @examples = Example.all
  end

  def destroy
     @example.destroy
     redirect_to admin_examples_path, :flash => {:message => "Destruction réussie." }
  end

end
