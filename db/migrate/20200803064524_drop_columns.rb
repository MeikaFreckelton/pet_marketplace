class DropColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :users_profiles, :address_2, :string
    remove_column :users_profiles, :suburb, :string
    remove_column :users_profiles, :state, :string
    remove_column :users_profiles, :postcode, :integer
    add_column :users_profiles, :dob, :date
    remove_column :organisations_profiles, :address_2, :string
    remove_column :organisations_profiles, :suburb, :string
    remove_column :organisations_profiles, :state, :string
    remove_column :organisations_profiles, :postcode, :integer
    remove_column :organisations_profiles, :rating, :integer
  end
end
