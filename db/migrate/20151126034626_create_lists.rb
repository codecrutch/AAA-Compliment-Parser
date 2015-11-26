class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :info

      t.timestamps null: false
    end
  end
end
