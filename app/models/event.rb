class Event < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :event_attendings, :foreign_key => :event_id  
  has_many :attendees, :through => :event_attendings, :source => :attendee
  
  scope :happened_before, -> { where('date < ?', DateTime.now) }
  scope :happens_later, -> {where('date >= ?', DateTime.now)}
  
  # Class methods for getting past and future events
  def Event.past    
    Event.happened_before
  end
  
  def Event.upcoming
    Event.happens_later
  end
   
end
