# encoding: utf-8

class ExamplesController < ApplicationController

  def index
    @examples = Example.all
  end

  def show
    @example = Example.find(params[:id])
    history << @example.id if history.empty?
  end

  def new
    @example = Example.new
  end

  def create
    @example = Example.new(params[:example])

    if @example.save
      redirect_to create_confirm_url, notice: 'Merci pour votre soumission. Elle sera approuvée sous peu.'
    else
      render action: "new"
    end
  end

  def create_confirm
  end

end
