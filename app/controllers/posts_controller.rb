class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy] 

    before_action :authorize, except: [:index, :show]

    def index
        @posts = Post.all
    end

    def show 
    end

    def new 
        @post = Post.new
        @tags = Tag.all  
    end

    def create 
        @post = Post.new(post_params)
        if @post.valid?
            @post.save 
            redirect_to post_path(@post)
        else
            render :new
        end
       
    end

    def edit 
        @tags = Tag.all
    end

    def update 
        if @post.update(post_params)
            redirect_to post_path(@post)
        else 
            render :edit
        end
    end

    def destroy 
        @post.destroy
        redirect_to posts_path
    end


    private 

    def find_post 
        @post = Post.find(params[:id])
    end

    def post_params  
        params.require(:post).permit(:title, :content, :user_id, :img, :tag_ids => [])
    end

end
