class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :make
      t.string :model
      t.string :color
      t.decimal :minprice
      t.decimal :maxprice
      t.string :vin

      t.timestamps
    end
  end
end
