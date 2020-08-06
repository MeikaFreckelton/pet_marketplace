json.extract! donation, :id, :users_profile_id, :organisations_profile_id, :amount, :description, :created_at, :updated_at
json.url donation_url(donation, format: :json)
