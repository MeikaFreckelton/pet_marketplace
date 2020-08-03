class AddLocationToDonates < ActiveRecord::Migration[6.0]
  def change
    add_column :donates, :location, :string
  end
end
