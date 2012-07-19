class ProductRec < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :user, :product, :title, :body
end
