class SessionsController < ApplicationController
  def new
  end
  
  def create    
    user = User.find(params[:session][:id])
    if user
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
end
