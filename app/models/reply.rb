class Reply < ApplicationRecord
  belongs_to :users_profile
  belongs_to :organisations_profile
  belongs_to :listing
  validates :message, presence: true
end
