# == Schema Information
#
# Table name: author
#
#  id               :integer          not null, primary key
#  book_id          :integer
#  name             :string(255)      not null
#
class Author < ActiveRecord::Base
  has_many :works
  has_many :books, :through => :works
  accepts_nested_attributes_for :books
end
