class OrganisationsProfilesController < ApplicationController
  before_action :set_organisations_profile, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_organisation!, only: [:new, :create]
  # GET /organisations_profiles
  # GET /organisations_profiles.json
  def index
    @organisations_profiles = OrganisationsProfile.all
  end

  # GET /organisations_profiles/1
  # GET /organisations_profiles/1.json
  def show
  end

  # GET /organisations_profiles/new
  def new
    # @organisation_id = 
    if current_user
      redirect_to organisations_profiles_path
    end
  
    @organisations_profile = OrganisationsProfile.new
  end

  # GET /organisations_profiles/1/edit
  def edit
    
    if current_user or (current_organisation.id != @organisations_profile.organisation_id)
      redirect_to organisations_profile_path
    end
  end

  # POST /organisations_profiles
  # POST /organisations_profiles.json
  def create

    @organisations_profile = OrganisationsProfile.new(organisations_profile_params)
    @organisations_profile.organisation_id = current_organisation.id #find(params[:id])
    @organisations_profile.save
    # @organisations_profile = current_organisation.OrganisationsProfile.create(organisation_profile_params)
    # 

    respond_to do |format|
      if @organisations_profile.save
        format.html { redirect_to @organisations_profile, notice: 'Organisations profile was successfully created.' }
        format.json { render :show, status: :created, location: @organisations_profile }
      else
        format.html { render :new }
        format.json { render json: @organisations_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisations_profiles/1
  # PATCH/PUT /organisations_profiles/1.json
  def update
    respond_to do |format|
      if @organisations_profile.update(organisations_profile_params)
        format.html { redirect_to @organisations_profile, notice: 'Organisations profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisations_profile }
      else
        format.html { render :edit }
        format.json { render json: @organisations_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisations_profiles/1
  # DELETE /organisations_profiles/1.json
  def destroy
    @organisations_profile.destroy
    respond_to do |format|
      format.html { redirect_to organisations_profiles_url, notice: 'Organisations profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisations_profile
      @organisations_profile = OrganisationsProfile.find(params[:id]) 
    end

    # Only allow a list of trusted parameters through.
    def organisations_profile_params
      params.require(:organisations_profile).permit(:organisation_name, :contact_name, :phone_number, :address_1, :address_2, :suburb, :state, :postcode, :bio, :rating, :organisation_id, pictures: [])
    end

    # def set_organisations_profile
    #   @organisations_profile.organisations_id = current_organisation.id
    # end
end
