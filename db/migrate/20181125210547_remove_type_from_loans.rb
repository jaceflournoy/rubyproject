class RemoveTypeFromLoans < ActiveRecord::Migration[5.2]
  def change
    remove_column :loans, :type, :integer
  end
end
