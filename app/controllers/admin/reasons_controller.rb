# encoding: UTF-8

class Admin::ReasonsController < AdminController
  load_and_authorize_resource

  def index
  end

  def edit
  end

  def update
    if @reason.update_attributes(params[:reason])
      redirect_to admin_reasons_path, :notice => 'Raison modifiée avec succès.'
    else
      render action: "edit"
    end
  end

  def destroy
     @reason.destroy
     redirect_to admin_reasons_path, :notice => "Raison effacée. On ne la reverra plus!"
  end

end
