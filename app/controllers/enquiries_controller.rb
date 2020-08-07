class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /enquiries
  # GET /enquiries.json
  def index

    @enquiries = Enquiry.all
    if current_user
      redirect_to root_path
    end
    
  end



  # GET /enquiries/1
  # GET /enquiries/1.json
  def show
    

  end

  # GET /enquiries/new
  def new
    if current_user 
      if current_user.users_profile == nil
        redirect_to new_users_profile_path
      else
        @enquiry = Enquiry.new
        
      end
      
    else
      redirect_to listings_path
    end

  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  # POST /enquiries.json
  def create
    @enquiry = Enquiry.new(enquiry_params)
    # @listing_id = params[:listing_id]
    
    @enquiry.users_profile_id = (UsersProfile.find_by(user_id: current_user.id)).id
    # @enquiry.organisations_profile_id = (OrganisationsProfile.find_by(params[:organisations_profile_id])).id
    @enquiry.name = @enquiry.users_profile.first_name
    @enquiry.email = @enquiry.users_profile.user.email
    @enquiry.save

    respond_to do |format|
      if @enquiry.save
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @enquiry }
      else
        format.html { render :new }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquiries/1
  # PATCH/PUT /enquiries/1.json
  def update
    respond_to do |format|
      if @enquiry.update(enquiry_params)
        format.html { redirect_to @enquiry, notice: 'Enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @enquiry }
      else
        format.html { render :edit }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enquiries/1
  # DELETE /enquiries/1.json
  def destroy
    @enquiry.destroy
    respond_to do |format|
      format.html { redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enquiry_params
      params.require(:enquiry).permit(:users_profile_id, :listing_id, :message, :organisations_profile_id)
    end
end
