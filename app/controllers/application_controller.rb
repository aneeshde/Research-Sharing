class ApplicationController < ActionController::Base
  protect_from_forgery
  I18n.config.enforce_available_locales = false
end
