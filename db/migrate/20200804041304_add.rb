class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :enquiries, :organisations_profile_id, :integer
    add_foreign_key :enquiries, :organisations_profiles
  end
end
