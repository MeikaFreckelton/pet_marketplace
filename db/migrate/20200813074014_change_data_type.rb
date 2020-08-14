class ChangeDataType < ActiveRecord::Migration[6.0]

  def up 
    change_column :users_profiles, :phone_number, :varchar
  end

  def down
    change_column :users_profiles, :phone_number, :integer
  end
end
