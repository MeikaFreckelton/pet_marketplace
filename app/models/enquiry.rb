class Enquiry < ApplicationRecord
  belongs_to :users_profile
  belongs_to :listing
  belongs_to :organisations_profile
  validates :organisations_profile_id, :users_profile_id, :message, :listing_id, :email, :name, presence: true
  # has_one :organisations_profile, through :listing 
end
