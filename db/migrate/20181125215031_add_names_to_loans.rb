class AddNamesToLoans < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :loanname, :string
    add_column :loans, :year, :integer
  end
end
