class UsersProfilesController < ApplicationController
  before_action :set_users_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /users_profiles
  # GET /users_profiles.json
  def index
    @users_profiles = UsersProfile.all
    if current_organisation or current_user
      redirect_to root_path
    end
  end

  # GET /users_profiles/1
  # GET /users_profiles/1.json
  def show
  end

  # GET /users_profiles/new
  def new
    @users_profile = UsersProfile.new
  end

  # GET /users_profiles/1/edit
  def edit
  end

  # POST /users_profiles
  # POST /users_profiles.json
  def create
    @users_profile = UsersProfile.new(users_profile_params)
    @users_profile.user_id = current_user.id
    # @users_profile.id = current_user.users_profile.id 
    @users_profile.save


    respond_to do |format|
      if @users_profile.save
        format.html { redirect_to @users_profile, notice: 'Users profile was successfully created.' }
        format.json { render :show, status: :created, location: @users_profile }
      else
        format.html { render :new }
        format.json { render json: @users_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_profiles/1
  # PATCH/PUT /users_profiles/1.json
  def update
    respond_to do |format|
      if @users_profile.update(users_profile_params)
        format.html { redirect_to @users_profile, notice: 'Users profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_profile }
      else
        format.html { render :edit }
        format.json { render json: @users_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_profiles/1
  # DELETE /users_profiles/1.json
  def destroy
    @users_profile.destroy
    respond_to do |format|
      format.html { redirect_to users_profiles_url, notice: 'Users profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_profile
      @users_profile = UsersProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_profile_params
      params.require(:users_profile).permit(:first_name, :last_name, :phone_number, :address_1, :address_2, :suburb, :state, :postcode, :user_id, :dob)
    end
end
