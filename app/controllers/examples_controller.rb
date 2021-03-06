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

  def top
    @examples = Example.all.sort{|x,y| compare(x,y) }.slice(0...10)
    @title = "Top 10 les plus partagés"
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

  def compare x, y
    shares_x = x.facebook_shares + x.twitter_shares
    shares_y = y.facebook_shares + y.twitter_shares
    if shares_x < shares_y
      1
    elsif shares_x > shares_y
      -1
    else
      0
    end
  end

end
