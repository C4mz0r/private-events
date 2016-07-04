class User < ActiveRecord::Base
  has_many :events
  #has_many :commitments, foreign_key: "attendee_id" #, source: "blah"
  has_many :event_attendings, :foreign_key => :attendee_id
  has_many :attended_events, :through => :event_attendings, :source => :event
  # was has_many :events ....etc
end

