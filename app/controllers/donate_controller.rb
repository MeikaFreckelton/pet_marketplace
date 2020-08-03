class DonateController < ApplicationController
    def index
        @organisations_profiles = OrganisationsProfile.all
    
    end
end
