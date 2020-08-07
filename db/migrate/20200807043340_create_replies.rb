class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.references :users_profile, null: false, foreign_key: true
      t.references :organisations_profile, null: false, foreign_key: true
      t.text :message
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
