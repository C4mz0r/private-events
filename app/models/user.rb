class User < ActiveRecord::Base
  has_many :events  
  has_many :event_attendings, :foreign_key => :attendee_id
  has_many :attended_events, :through => :event_attendings, :source => :event
      
  def upcoming_events    
    self.events.happens_later    
  end
  
  def previous_events    
    self.events.happened_before
  end  
end

