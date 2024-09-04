module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user!
    redirect_to login_path, alert: "You must be logged in to access this page." unless logged_in?
  end
end
