class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :rating_caches
    drop_table :average_caches
  end
end
