class UsersProfile < ApplicationRecord
  belongs_to :user
  has_many :enquiries
  has_many :replies
  validates :first_name, :last_name, :phone_number, :address_1, presence: true
 
end
