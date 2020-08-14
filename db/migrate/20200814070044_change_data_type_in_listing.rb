class ChangeDataTypeInListing < ActiveRecord::Migration[6.0]
  def up 
    change_column :listings, :microchip_number, :varchar
  end

  def down
    change_column :listings, :microchip_number, :integer
  end
end
