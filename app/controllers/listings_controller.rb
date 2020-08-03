class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  # before_action :set_dropdowns, only: [:edit, :new]
  # before_action (:authenticate_user! || :authenticate_organisation! || :authenticate_admin!)
  # validates :

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing_id = Listing.find(params[:id])
    # @users_profile_id = current_user.users_profile.id
  end

  # GET /listings/new
  def new
    if current_user
      redirect_to listings_path
    else
      @listing = Listing.new
    end
  end

  # GET /listings/1/edit
  def edit
    if @listing.organisations_profile.id != current_organisation.organisations_profile.id
      redirect_to listing_path
    end
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.organisations_profile_id = (OrganisationsProfile.find_by(organisation_id: current_organisation.id)).id 
    @listing.save

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:name, :age, :location, :price, :breed, :sex, :animal_type, :microchip_number, :desexed_status, :expected_size, :vaccination_status, :health_status, :phone_number, :email, :description, :vaccination_details, :organisations_profile_id, :users_profile_id, pictures: [])
    end

    

end





# rails c problem solving notes :
# listing, listing2
# org, org2
# org_profile, profile2
# group
# group is trying to find the profile_id, of the profile whose org_id matches org.id(current_org)
# OrganisationsProfile.find_by(organisation_id: org.id) 