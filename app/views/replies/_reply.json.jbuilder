json.extract! reply, :id, :users_profile_id, :organisations_profile_id, :message, :listing_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
