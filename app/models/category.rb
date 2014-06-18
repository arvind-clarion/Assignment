class Category < ActiveRecord::Base
  has_many :products
  attr_accessible :status, :description, :name
end
