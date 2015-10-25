class AddInfoToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :address_line_1, :string
    add_column :contacts, :address_line_2, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :postal_code, :string
    add_column :contacts, :country, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :first_name, :string
    add_column :contacts, :last_name, :string
  end
end
