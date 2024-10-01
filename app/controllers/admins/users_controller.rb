class Admins::UsersController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_user, only: [ :edit, :update, :destroy ]

    # GET /admins/users
    def index
      @users = User.all
    end

    # GET /admins/users/:id/edit
    def edit
      @users
    end

    # PATCH/PUT /admins/users/:id
    def update
      if @user.update(user_params)
        redirect_to admins_users_path, notice: "User was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /admins/users/:id
    def destroy
      @user.destroy
      redirect_to admins_users_path, notice: "User was successfully deleted."
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def authenticate_admin!
      unless current_user.admin? || current_user.superuser?
        flash[:alert] = "You are not authorized to access this section."
        redirect_to root_path
      end
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end
end
