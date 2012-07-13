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
    @example = Example.sample(history, session[:filter_by_reason])
    history << @example.id
    redirect_to example_path(@example)
  end

  def history
    session[:history] ||= []
  end

  def clear_history
    history.clear
  end

  private
  def set_locale
    I18n.locale = "fr"
  end
end
