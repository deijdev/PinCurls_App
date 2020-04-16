class SessionsController < ApplicationController

   def login
      @user = User.find_by(username: params[:username])
   end

   def process_login
      # find the user from the database with this username
      user = User.find_by(username: params[:username])
      # if the user exist then create a session id 
      if user && user.authenticate(params[:password]) 
         #  { username => {password}}
         session[:user_id] = user.id
         redirect_to  '/user_homepage', notice: 'Successfully logged in!' 
      else
         flash["error"]= "Incorrect username or password"
         redirect_to "/login"
      end
   end


    def logout
      session.clear
      redirect_to "/login"
    end

end
