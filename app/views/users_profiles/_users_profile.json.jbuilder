json.extract! users_profile, :id, :first_name, :last_name, :phone_number, :address_1, :address_2, :suburb, :state, :postcode, :user_id, :created_at, :updated_at
json.url users_profile_url(users_profile, format: :json)
