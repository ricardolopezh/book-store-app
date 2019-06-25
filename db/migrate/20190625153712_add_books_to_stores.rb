class AddBooksToStores < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :quantity, :integer, null: false, default: 0
    add_column :books, :store_id, :integer
  end
end
