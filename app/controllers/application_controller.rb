class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper
  helper_method :current_user

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def handle_unverified_request
    sign_out
    super
  end


end