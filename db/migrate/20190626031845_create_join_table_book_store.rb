class CreateJoinTableBookStore < ActiveRecord::Migration[5.1]
  def change
    create_join_table :Books, :Stores do |t|
      t.index [:book_id, :store_id]
      t.index [:store_id, :book_id]
    end
  end
end
