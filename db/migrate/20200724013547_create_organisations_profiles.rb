class CreateOrganisationsProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :organisations_profiles do |t|
      t.string :organisation_name
      t.string :contact_name
      t.integer :phone_number
      t.string :address_1
      t.string :address_2
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.text :bio
      t.integer :rating
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
