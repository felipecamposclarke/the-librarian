class SeparateAuthorsFromBooks < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, null: false, index: true

      t.timestamps
    end
  end

  def data
    # iterate over the books to extract publishers and create new models
    Book.all.each do |book|
      #find or create
      author = Author.find_or_create_by(name: book.author)
      # associates the two models
      Work.create({ :book => book, :author => author })
    end
    # remove the attribute
    remove_column :books, :author
  end
end
