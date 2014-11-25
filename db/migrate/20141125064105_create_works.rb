class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :author_id, :null => false
      t.integer :book_id, :null => false

      t.timestamps
    end

    add_index :works, :author_id
    add_index :works, :book_id
  end
end
