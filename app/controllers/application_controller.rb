class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

private
  def set_locale
    I18n.locale = :nl
  end
end
