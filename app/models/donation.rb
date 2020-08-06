class Donation < ApplicationRecord
  belongs_to :users_profile
  belongs_to :organisations_profile
end
