class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5

      t.timestamps null: false
    end
  end
end
