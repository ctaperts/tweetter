class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_perameters, if: :devise_controller?

  protected

  def configure_permitted_perameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :username, :bio, :location)  }

    devise_parameter_sanitizer.for(:account_update) { |u| u.permit( :email, :password, :password_confirmation, :current_password, :name, :bio, :location, :username)  }

  end

end
