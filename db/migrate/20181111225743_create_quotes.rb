class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.decimal :totalprice
      t.decimal :multiplier
      t.references :customer, foreign_key: true
      t.boolean :sold
      t.references :car, foreign_key: true
      t.references :loan, foreign_key: true
      t.decimal :wholesaleprice
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
