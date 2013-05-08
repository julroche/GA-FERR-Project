class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user
	# helper_method :current_activity
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  #  def current_activity
  #   @current_activity ||= Activity.find(params[:id])
  # end

end
