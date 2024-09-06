module ApplicationHelper
  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
  end

  def authenticate_user!
    redirect_to login_path, alert: "You must be logged in to access this page." unless logged_in?
  end
end
