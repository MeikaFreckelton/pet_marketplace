class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all
    @organisations_profiles = OrganisationsProfile.all
    # setting featured organisation :
    @featured = OrganisationsProfile.find(6)
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
    # for stripe payments :
    session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        line_items: [{
            name: @donation.organisations_profile.organisation_name,
            amount: (@donation.amount * 100).to_i,
            currency: 'aud',
            quantity: 1,
        }],
        payment_intent_data: {
            metadata: {
                users_profile_id: current_user.users_profile.id,
                organisations_profile_id: @donation.organisations_profile_id
            }
        },
        success_url: "#{root_url}payments/success?users_profileId=#{current_user.users_profile.id}&organisations_profileId=#{@donation.organisations_profile_id}",
        cancel_url: "#{root_url}donations"
    )

    @session_id = session.id
  end

  # GET /donations/new
  def new
    @donation = Donation.new
    
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  # POST /donations.json
  def create
    # connecting appropriate users and organisations profiles when creating a donation :
    @donation = Donation.new(donation_params)
    @donation.users_profile_id = current_user.users_profile.id
    @donation.organisations_profile_id = (OrganisationsProfile.find_by(params[:organisations_profile_id])).id
    @donation.save

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'Donation was successfully created.' }
        format.json { render :show, status: :created, location: @donation }

      else
        format.html { render :new }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donations/1
  # PATCH/PUT /donations/1.json
  def update
    respond_to do |format|
      if @donation.update(donation_params)
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation }
      else
        format.html { render :edit }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to donations_url, notice: 'Donation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donation_params
      params.require(:donation).permit(:users_profile_id, :organisations_profile_id, :amount, :description)
    end
end
