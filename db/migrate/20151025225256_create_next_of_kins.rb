class CreateNextOfKins < ActiveRecord::Migration
  def change
    create_table :next_of_kins do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
    end
  end
end
