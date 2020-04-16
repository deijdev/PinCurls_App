class UsersController < ApplicationController
before_action :find_user, only: [:show, :edit, :update]


   def new 
    @user = User.new

   end

   def show
    
   end

   def user_homepage
    @posts = Post.all
    render :user_homepage
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

   def edit
   end

   def update
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
   end

   private

   def find_user
    @user = User.find(params[:id])
   end

   def user_params
    params.require(:user).permit(:name, :username, :password, :img)
   end






end
