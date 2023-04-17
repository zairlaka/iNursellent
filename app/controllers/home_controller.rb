class HomeController < ActionController::Base
  layout "application"
  def index
    return  current_user.nil?
    if current_user&.role == "user"
      redirect_to nurse_dashboard_index_path
    elsif current_user&.role == "admin"
      # redirect_to admin_team_index_path
    end
  end

  def professionals;end
  
end
