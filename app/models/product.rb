class Product < ActiveRecord::Base
  has_and_belongs_to_many :recommendations
  has_many :users, :through => :recommendations
#  belongs_to :product_rec
  attr_accessible :description, :name, :price, :product_type, :perfect_for, :gift_type
end
