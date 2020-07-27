class Listing < ApplicationRecord
  belongs_to :organisations_profile
  belongs_to :users_profile, optional: true
  has_many_attached :pictures
  enum sex: {female: 0, male: 1}
  enum desexed_status: {desexed: 0, not_desexed: 1}
  enum vaccination_status: {vaccinated: 0, unvaccinated: 1}
end
