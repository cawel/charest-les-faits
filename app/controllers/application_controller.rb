# encoding: utf-8

class ApplicationController < ActionController::Base
  before_filter :set_locale
  protect_from_forgery

  def index
    self.next
  end

  def next
    puts "history = #{history} and position = #{position}"
    inc_position unless history.empty?

    if position == history.length
      @example = sample
      history << @example.id
    else
      @example = fetch_from_history
      (dec_position unless history.empty?; return self.next) if @example.nil?
    end

    redirect_to example_path(@example)
  end

  def previous
    puts "history = #{history} and position = #{position}"
    dec_position

    if position < 0
      @example = sample
      history.unshift(@example.id)
      inc_position
    else
      @example = fetch_from_history
      return self.previous if @example.nil?
    end

    redirect_to example_path(@example)
  end

  def fetch_from_history
    example = Example.find_by_id(history[position])
    history.delete_at position if example.nil?
    example
  end

  def sample
    example = Example.all.sample if history.empty?
    example = Example.find(:first, :conditions => ['id not in (?)', history], :order => 'RANDOM()') if example.nil?
    example = Example.all.sample if example.nil?
    example
  end

  def dec_position
    session[:position] -= 1
  end

  def inc_position
    session[:position] += 1
  end

  def position
    session[:position] ||= 0
  end

  def history
    session[:history] ||= []
  end

  private
  def set_locale
    I18n.locale = "fr"
  end
end
