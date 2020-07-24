class RemoveOrganisations < ActiveRecord::Migration[6.0]
  def change
    drop_table :organisations
    
  end
end
