# encoding: UTF-8

class Admin::ExamplesController < AdminController
  load_and_authorize_resource

  def index
  end

  def edit
  end

  def update
    if @example.update_attributes(params[:example])
      redirect_to admin_examples_path, :notice => 'Exemple modifié avec succès.'
    else
      render action: "edit"
    end
  end

  def destroy
     @example.destroy
     redirect_to admin_examples_path, :notice => "Exemple effacé. On ne le reverra plus!"
  end

end
