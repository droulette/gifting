class Reminder < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :ondate
  
  scope :sortedasc, order("reminders.ondate ASC")
  scope :sorteddesc, order("reminders.ondate DESC")
  scope :upcoming, where('ondate > ?',  Date.today)
  scope :past, where('ondate < ?',  Date.today)
end
