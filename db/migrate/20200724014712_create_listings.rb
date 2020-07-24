class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :age
      t.string :location
      t.float :price
      t.string :breed
      t.integer :sex
      t.string :animal_type
      t.float :microchip_number
      t.integer :desexed_status
      t.string :expected_size
      t.integer :vaccination_status
      t.text :health_status
      t.integer :phone_number
      t.string :email
      t.text :description
      t.text :vaccination_details
      t.references :organisations_profile, null: false, foreign_key: true
      t.references :users_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
