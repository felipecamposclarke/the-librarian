# == Schema Information
#
# Table name: editorial
#
#  id               :integer          not null, primary key
#  name             :string(255)      not null
#

class Editorial < ActiveRecord::Base

  # Associations
  has_many :books

end
