class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :status, :description, :category_id
end
