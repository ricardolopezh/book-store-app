class AddQuantityToBooks < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :quantity, :string
  	add_reference :books, :store, foreign_key: true
  end
end
