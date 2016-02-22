class SessionsController < ApplicationController
  
  def new
  end

  def create
    
    user = User.find_by_email(params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:success] = "Signed In!"
      redirect_to root_url
    else
      flash.now.alert = "Invalid Username and Password"
      render "new"
    end
  end

  def destroy
    sign_out
    redirect_to root_url, :notice => "Logged Out!"
  end

end
