class AboutController < ApplicationController
    def index
        if current_organisation.organisations_profile.id == nil
            redirect_to new_organisations_profile_path
        end
    end

end
