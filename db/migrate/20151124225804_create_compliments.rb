class CreateCompliments < ActiveRecord::Migration
  def change
    create_table :compliments do |t|
      t.integer :call_number
      t.string :driver
      t.string :date

      t.timestamps null: false
    end
  end
end
