class ApplicationController < ActionController::Base
    helper_method :current_user 

    def current_user
     # Look up the current user based on user_id in the session cookie:
      @user ||=  User.find_by(id: session[:user_id]) if session[:user_id]
      # if  @user session[:user_id] 
      # else
      # @user =  User.find_by(id: session[:user_id])
    end

    def authorize

      redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
    end    

end