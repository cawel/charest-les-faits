# encoding: utf-8

class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_filter :set_locale
  protect_from_forgery

  def reasons
    all_examples = Example.all
    @reasons_with_count = Reason.all.map {|r| [r, all_examples.select{|e| e.reasons.include? r}.size] }
  end

  def clear_by_reason
    session[:filter_by_reason] = nil
    clear_history
    self.next
  end

  def by_reason
    session[:filter_by_reason] = params[:id]
    clear_history
    self.next
  end

  def index
    self.clear_by_reason
  end

  def next
    logger.info "history = #{history} and position = #{position}"
    inc_position

    if position == history.length
      @example = Example.sample(history, session[:filter_by_reason])
      history << @example.id
    else
      @example = fetch_from_history
      (dec_position; return self.next) if @example.nil?
    end

    redirect_to example_path(@example)
  end

  def previous
    logger.info "history = #{history} and position = #{position}"
    dec_position

    if position < 0
      inc_position
      @example = Example.sample(history, session[:filter_by_reason])
      history.unshift(@example.id)
    else
      @example = fetch_from_history
      return self.previous if @example.nil?
    end

    redirect_to example_path(@example)
  end

  def fetch_from_history
    logger.info "fetching example id##{history[position]} from history #{history}"
    example = Example.find_by_id(history[position])
    history.delete_at position if example.nil?
    example
  end

  def dec_position
    (session[:position] = 0; return 0) if session[:position].nil?
    session[:position] -= 1
  end

  def inc_position
    (session[:position] = 0; return 0) if session[:position].nil?
    session[:position] += 1
  end

  def position
    session[:position] ||= nil
  end

  def history
    session[:history] ||= []
  end

  def clear_history
    history.clear
    session[:position] = nil
  end

  private
  def set_locale
    I18n.locale = "fr"
  end
end
