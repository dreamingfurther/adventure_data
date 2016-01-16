class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authorize_admin!
    if current_user.present? && !current_user.admin?
      redirect_to root_path
    end
  end      

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_dashboard_path
    else
      dashboard_path
    end
  end
end
