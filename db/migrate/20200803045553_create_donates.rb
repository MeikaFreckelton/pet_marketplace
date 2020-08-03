class CreateDonates < ActiveRecord::Migration[6.0]
  def change
    create_table :donates do |t|

      t.timestamps
    end
  end
end
