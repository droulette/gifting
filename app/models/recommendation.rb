class Recommendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  # attr_accessible :title, :body
  
  
  def recommend
    if reminders.for_whom=products.perfect_for
      product.each do |rec|
        product.name      
      end
    end
  end
end