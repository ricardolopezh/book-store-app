class AddBooksToStores < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :quantity, :integer, null: false, default: 0
  end
end
