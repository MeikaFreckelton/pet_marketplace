class Enquiry < ApplicationRecord
  has_one :users_profile
  belongs_to :listing
  # has_one :organisations_profile, through :listing 
end
