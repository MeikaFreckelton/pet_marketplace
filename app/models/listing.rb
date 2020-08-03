class Listing < ApplicationRecord
  belongs_to :organisations_profile
  belongs_to :users_profile, optional: true
  has_many_attached :pictures
end