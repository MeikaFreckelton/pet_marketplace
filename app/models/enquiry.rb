class Enquiry < ApplicationRecord
  belongs_to :users_profile
  belongs_to :listing
  # has_one :organisations_profile, through :listing 
end
