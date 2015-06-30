class SessionsController < ApplicationController
  def new
    render 'new'

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
    
      redirect_to edit_positions_url
    else
      flash.now[:danger] = 'Invalid credentials'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
