class SeparateEditorialFromBooks < ActiveRecord::Migration
  def change
    create_table :editorials do |t|
      t.string :name, null: false, index: true

      t.timestamps
    end
  end

  def data
    # creates the attribute to associate models
    add_column :books, :editorial_id, :integer
    # renames the event attribute to work it freely
    rename_column :books, :editorial, :aux
    # iterate over the books to extract publishers and create new models
    Book.all.each do |book|
      editorial = Editorial.find_or_create_by(name: book.aux)
      book.update_attribute(:editorial, editorial)
    end
    # remove the attribute
    remove_column :books, :aux
  end
end
