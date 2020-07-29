class ChangeColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :sex, :string
    
  end
end
