class PetsController < ApplicationController
  before_action :set_pet, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_user!, only: [ :edit, :update, :destroy ]
  before_action :authorize_pet!, only: [ :edit, :update, :destroy ]

  def index
    @pets = Pet.all
  end

  # GET /pets/1 or /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets or /pets.json
  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user

    respond_to do |format|
      if @pet.save
        format.html { redirect_to pet_path(@pet), notice: "Pet was successfully created." }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1 or /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to pet_path(@pet), notice: "Pet was successfully updated." }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1 or /pets/1.json
  def destroy
    @pet.destroy!

    respond_to do |format|
      format.html { redirect_to pets_path, notice: "Pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :tutor, :pet_birthdate, :pet_race, :tutors_contact, :pet_coat_color, :pet_photo, :pet_city, :pet_instagram, :pet_tiktok, :qrcode)
  end

  def authenticate_user!
    redirect_to new_session_path, alert: "Please log in to access this page." unless current_user
  end

  def authorize_pet!
    redirect_to @pet, alert: "Not authorized" unless @pet.user == current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
