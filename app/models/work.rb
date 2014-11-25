# == Schema Information
#
# Table name: author
#
#  id               :integer          not null, primary key
#  book_id          :integer          not null, primary key
#  author_id        :integer          not null, primary key
#
class Work < ActiveRecord::Base
  belongs_to :book, :foreign_key => 'book_id'
  belongs_to :author, :foreign_key => 'author_id'
end
