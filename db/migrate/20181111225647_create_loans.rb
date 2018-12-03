class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :loanname
      t.integer :year
      t.decimal :interestrate

      t.timestamps
    end
  end
end
