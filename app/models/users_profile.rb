class UsersProfile < ApplicationRecord
  belongs_to :user
  has_many :enquiries
end
