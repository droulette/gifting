class Recommendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  # attr_accessible :title, :body
end
