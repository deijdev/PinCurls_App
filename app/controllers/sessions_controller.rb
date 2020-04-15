class SessionsController < ApplicationController

   def login
   end

   def process_login
      # find the user from the database with this username
      user = User.find_by(username: params[:username])
      # if the user exist then create a session id 
      if user 
         session[:user_id] = user.id
         redirect_to  '/user_homepage' 
      else
         redirect_to "/login"
      end
   end


    def logout
      session.clear
      redirect_to "/login"
    end

end
