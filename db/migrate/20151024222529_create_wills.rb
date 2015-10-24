class CreateWills < ActiveRecord::Migration
  def change
    create_table :wills do |t|
      t.string :title
      t.datetime :date
      t.string :executor
      t.string :estate_plan
      t.string :burial_wishes
      t.string :comments

      t.timestamps
    end
  end
end
