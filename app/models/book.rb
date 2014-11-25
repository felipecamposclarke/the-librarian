# == Schema Information
#
# Table name: books
#
#  id               :integer          not null, primary key
#  title            :string(255)      not null
#  author           :string(255)      not null
#  original_title   :string(255)
#  translation      :string(255)
#  edition          :integer
#  edition_date     :date
#  edition_place    :string(255)
#  publication_year :integer
#  isbn             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Book < ActiveRecord::Base

  # Associations
  belongs_to :editorial
  has_many :works
  has_many :authors, :through => :works
  accepts_nested_attributes_for :authors
  accepts_nested_attributes_for :works

  # Paperclip
  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style-cover-missing.png"

  # Validations
  # validates :title, :presence => true
  # validates :edition, :publication_year, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  # validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  # Delegates
  delegate :name, to: :editorial, prefix: true

end
