# encoding: UTF-8

class Admin::ExamplesController < AdminController
  load_and_authorize_resource

  def index
    @examples = Example.order('created_at desc').all
  end

  def edit
  end

  def update
    approved = params[:example].delete :approved
    @example.attributes = params[:example]
    @example.approved = approved

    if @example.save
      redirect_to admin_examples_path, :notice => "L'exemple a bien été modifié."
    else
      render action: "edit"
    end
  end

  def destroy
     @example.destroy
     redirect_to admin_examples_path, :notice => "Exemple effacé. On ne le reverra plus!"
  end

end
