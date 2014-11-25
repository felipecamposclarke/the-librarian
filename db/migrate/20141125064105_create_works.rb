class CreateWorks < ActiveRecord::Migration
  def change
    create_table :Works do |t|
      t.integer :author_id, :null => false
      t.integer :book_id, :null => false

      t.timestamps
    end

    add_index :Works, :author_id
    add_index :Works, :book_id
  end
end
