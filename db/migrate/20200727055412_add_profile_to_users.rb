class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :users_profile_id, :integer
    add_column :organisations, :organisations_profile_id, :integer
    add_foreign_key :users, :users_profiles
    add_foreign_key :organisations, :organisations_profiles
  end
end
