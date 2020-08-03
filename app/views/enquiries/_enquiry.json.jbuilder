json.extract! enquiry, :id, :users_profile_id, :listing_id, :message, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)
