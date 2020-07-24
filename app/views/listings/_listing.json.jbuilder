json.extract! listing, :id, :name, :age, :location, :price, :breed, :sex, :animal_type, :microchip_number, :desexed_status, :expected_size, :vaccination_status, :health_status, :phone_number, :email, :description, :vaccination_details, :organisations_profile_id, :users_profile_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
