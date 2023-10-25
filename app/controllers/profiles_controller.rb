include ProfilesHelper
class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :validates_profile, only: %i[new create]

  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
    @teams = Team.all
    @positions = Position.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
    @user = current_user
  end
  
  # GET /profiles/new
  def new
    @teams = Team.all
    @positions = Position.all
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @teams = Team.all
    @positions = Position.all
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    respond_to do |format|
      if @profile.save
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_url(@profile), notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    current_user.profile.update(id: nil)
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def my_shirts
    @profile = Profile.find(params[:id])
    @shirts = Shirt.where(profile_id: params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      if (current_user.profile.id)
        @profile = Profile.find(params[:id])
      else
        redirect_to new_profile_path
      end
    end

 

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:profile_name, :surname, :age, :image, :birthday, :position_id, :team_id)
    end
end
