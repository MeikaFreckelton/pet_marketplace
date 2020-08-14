class ChangeColumnType < ActiveRecord::Migration[6.0]
  def up 
    change_column :organisations_profiles, :phone_number, :varchar
    change_column :listings, :phone_number, :varchar
  end

  def down
    change_column :organisations_profiles, :phone_number, :integer
    change_column :listings, :phone_number, :integer
  end
end
