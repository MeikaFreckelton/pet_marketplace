class OrganisationsProfile < ApplicationRecord
  belongs_to :organisation
  validates :organisation_name, :phone_number, :address_1, :suburb, :state, :postcode, :bio, presence: true
  has_many_attached :pictures
  # @organisations_profile.pictures.attach(params[:organisations_profile][:picture])
end
