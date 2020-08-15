class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :admins
    remove_column :donations, :description, :
  end
end
