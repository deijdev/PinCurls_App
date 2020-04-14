class UsersController < ApplicationController



   def new 
    @user = User.new

   end

   def create
  
    
    @user = User.new(user_params)
  

        if @user.valid?
            @user.save
            redirect_to '/'
        else
            render :new
        end
   end

   private

   def user_params
    params.require(:user).permit(:name, :username, :password)
   end






end
