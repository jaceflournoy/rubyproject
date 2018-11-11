class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :type
      t.decimal :interestrate

      t.timestamps
    end
  end
end
