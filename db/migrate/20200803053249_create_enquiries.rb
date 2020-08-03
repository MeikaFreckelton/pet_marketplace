class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.references :users_profile, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
