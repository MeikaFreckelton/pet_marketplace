class ChangeListingsColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :desexed_status, :string
    change_column :listings, :vaccination_status, :string
  end
end
