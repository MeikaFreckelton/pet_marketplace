class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_null :listings, :users_profile_id, true 
  end
end
