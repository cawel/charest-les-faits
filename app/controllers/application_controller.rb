# encoding: utf-8

class ApplicationController < ActionController::Base
  before_filter :set_locale
  protect_from_forgery

  def index
    @example = Example.all.sample
  end

  private

  def set_locale
    I18n.locale = "fr"
  end
end
