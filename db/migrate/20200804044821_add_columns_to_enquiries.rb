class AddColumnsToEnquiries < ActiveRecord::Migration[6.0]
  def change
    add_column :enquiries, :email, :string
    add_column :enquiries, :name, :string
  end
end
