class AddUserToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :user, index: true, foreign_key: true
    add_reference :next_of_kins, :user, index: true, foreign_key: true
    add_reference :wills, :user, index: true, foreign_key: true
  end
end
