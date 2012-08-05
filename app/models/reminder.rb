class Reminder < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :ondate
  
  scope :sorted, order("reminders.ondate ASC")
  scope :upcoming, where('ondate > ?',  Date.today)
  scope :past, where('ondate < ?',  Date.today)
end
