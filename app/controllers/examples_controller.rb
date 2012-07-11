# encoding: utf-8

class ExamplesController < ApplicationController

  def index
    @examples = Example.all
  end

  def show
    @example = Example.find(params[:id])
  end

  def new
    @example = Example.new
  end

  def edit
    @example = Example.find(params[:id])
  end

  def create
    @example = Example.new(params[:example])

    if @example.save
      redirect_to examples_path, notice: 'Exemple créé avec succès.'
    else
      render action: "new"
    end
  end

  def update
    @example = Example.find(params[:id])

    if @example.update_attributes(params[:example])
      redirect_to @example, notice: 'Exemple modifié avec succès.'
    else
      render action: "edit"
    end
  end

  def destroy
    @example = Example.find(params[:id])
    @example.destroy

    redirect_to examples_url
  end
end
