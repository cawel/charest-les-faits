# encoding: utf-8

class ExamplesController < ApplicationController

  def index
    @examples = Example.all
  end

  def show
    @example = Example.find_by_id(params[:id])
    if @example.nil?
      redirect_to not_found_url 
    else
      history << @example.id if history.empty?
      @title = @example.headline
    end
  end

  def new
    @example = Example.new
  end

  def create
    @example = Example.new(params[:example])

    if @example.save
      redirect_to create_confirm_url
    else
      render action: "new"
    end
  end

  def create_confirm
  end

  def feed
    @title = "La honte a un visage"
    @items = Example.approved.order('updated_at desc').all
    @updated = @items.first.updated_at unless @items.empty?

    respond_to do |format|
      format.atom { render :layout => false }
      format.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
    end
  end

end
