class CreateTophundreds < ActiveRecord::Migration
  def change
    create_table :tophundreds do |t|
      t.string :genre
      t.string :songname
      t.string :artistname
      t.integer :rank
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
