class UsersProfile < ApplicationRecord
  belongs_to :user
  has_many :enquiries
  has_many :replies
  # has_many :donations
end
