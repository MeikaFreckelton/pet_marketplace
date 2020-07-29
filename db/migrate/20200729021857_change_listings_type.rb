class ChangeListingsType < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :microchip_number, :integer
  end
end
