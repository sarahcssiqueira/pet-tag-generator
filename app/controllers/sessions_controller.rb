class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

      if user && user.authenticate(params[:password])

        session[:user_id] = user.id
        redirect_to user_path(user), notice: "Logged in successfully."
      else
        message = "Something went wrong! Make sure your username and password are correct."
        redirect_to login_path, notice: message
      end
  end

  def login
    if session[:user_id]
      redirect_to user_path(session[:user_id])
    else
      render :login
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully."
  end
end
