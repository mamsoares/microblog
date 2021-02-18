require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :json, :xml, :js

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :init_form
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) << [:login, :username, :remember_me]
    devise_parameter_sanitizer.for(:sign_up) << [:name, :email, :username, :password]
    devise_parameter_sanitizer.for(:account_update) << [:name, :username, :email, :password, :current_password, :bio, :site, :birth, :photo, :photo_cache]
  end

  def init_form
    @micropost = Micropost.new
  end

end
