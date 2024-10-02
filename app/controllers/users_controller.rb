class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :update ]
  before_action :authorize_access!, only: [ :edit, :update, :destroy ]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Account created successfully. Welcome!"
        format.html { redirect_to root_path }
      else
        render :new
      end
    end
  end


  def show
      @user ||= User.find_by(id: params[:id])
  end


  # GET /user/1/edit
  def edit
    @user
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_path(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /pets/1.json
  def destroy
    @user.destroy!

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # Logic for authorization
  def authorize_access!
      unless current_user.admin? || current_user == @user
        redirect_to root_path, alert: "You are not authorized to perform this action."
      end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
