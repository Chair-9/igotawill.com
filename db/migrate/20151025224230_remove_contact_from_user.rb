class RemoveContactFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :address_line_1, :string
    remove_column :users, :address_line_2, :string
    remove_column :users, :city, :string
    remove_column :users, :state, :string
    remove_column :users, :postal_code, :string
    remove_column :users, :country, :string
    remove_column :users, :phone, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
  end
end
