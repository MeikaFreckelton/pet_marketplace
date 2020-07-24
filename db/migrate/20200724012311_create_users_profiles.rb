class CreateUsersProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :users_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :address_1
      t.string :address_2
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
