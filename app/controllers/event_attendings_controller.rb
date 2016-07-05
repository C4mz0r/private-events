class EventAttendingsController < ApplicationController
  def register
    isRegistered = (current_user.event_attendings.pluck(:event_id).include?params[:id].to_i)? true : false    
    if (!isRegistered)
      if (current_user.event_attendings.build(event_id: params[:id]).save)
        redirect_to user_path(current_user)
        # flash - updated
      else
         #flash - failed to save
      end
    else
      redirect_to events_path
    end
  end
end