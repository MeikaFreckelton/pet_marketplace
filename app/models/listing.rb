class Listing < ApplicationRecord
  belongs_to :organisations_profile
  belongs_to :users_profile, optional: true
  has_many_attached :pictures
  has_many :enquiries
  has_many :replies
  validates :name, :age, :location, :price, :breed, :sex, :animal_type, :microchip_number, :desexed_status, :vaccination_status, :health_status, :vaccination_details, :description, :phone_number, :email, :pictures, presence: true
  
end
