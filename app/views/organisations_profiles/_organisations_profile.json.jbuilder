json.extract! organisations_profile, :id, :organisation_name, :contact_name, :phone_number, :address_1, :address_2, :suburb, :state, :postcode, :bio, :rating, :organisation_id, :created_at, :updated_at
json.url organisations_profile_url(organisations_profile, format: :json)
