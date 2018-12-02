class CreateQuotesolds < ActiveRecord::Migration[5.2]
  def change
    create_table :quotesolds do |t|

      t.timestamps
    end
  end
end
