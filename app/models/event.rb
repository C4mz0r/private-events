class Event < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  #has_many :commitments, foreign_key: "attendee_id" #, source: "blah"  
  #has_many :attendees, through: :commitments, source: :event
  
  #has_many :event_attendings, :foreign_key => :attendee_id
  has_many :event_attendings, :foreign_key => :event_id
  
  
  has_many :attendees, :through => :event_attendings, :source => :attendee
  
  
  
end
