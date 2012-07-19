class Product < ActiveRecord::Base
  belongs_to :product_rec
  attr_accessible :description, :name, :price, :product_type
end
