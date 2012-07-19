class Product < ActiveRecord::Base
  has_and_belongs_to_many :product_recs
  has_many :users, :through => :product_recs
#  belongs_to :product_rec
  attr_accessible :description, :name, :price, :product_type
end
