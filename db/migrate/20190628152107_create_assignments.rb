class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.belongs_to :store, index: true
      t.belongs_to :book, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
