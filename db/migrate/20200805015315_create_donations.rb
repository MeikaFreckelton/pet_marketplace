class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :users_profile, null: false, foreign_key: true
      t.references :organisations_profile, null: false, foreign_key: true
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
