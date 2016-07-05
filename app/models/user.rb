#include ActionView::Helpers

class User < ActiveRecord::Base
  has_many :events  
  has_many :event_attendings, :foreign_key => :attendee_id
  has_many :attended_events, :through => :event_attendings, :source => :event
      
  def upcoming_events    
    self.attended_events.happens_later    
  end
  
  def previous_events    
    self.attended_events.happened_before
  end  
  
=begin
  def subscribeTo(event_id)
    if !current_user.isSubscribedTo(event_id)
      current_user.event_attendings.build(event_id: event_id).save
    end
  end
  
  def isSubscribedTo?(event_id)
    (current_user.event_attendings.pluck(:event_id).include?event_id)? true : false
  end
=end
end

