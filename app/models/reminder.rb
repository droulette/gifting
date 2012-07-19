class Reminder < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :ondate
end
