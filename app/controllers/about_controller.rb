class AboutController < ApplicationController
    def index
        # redirect new orgs/users to create new profile immediately after signing up :
        if current_organisation
            if current_organisation.organisations_profile.id == nil
                redirect_to new_organisations_profile_path
            end
        elsif current_user
            if current_user.users_profile == nil
                redirect_to new_users_profile_path
            end
        end

    end

end
