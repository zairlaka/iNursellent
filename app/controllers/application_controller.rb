class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:role])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:email,:role,:name,:password_updated_at])
  end
end
