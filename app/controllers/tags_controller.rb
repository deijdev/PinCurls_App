class TagsController < ApplicationController
    before_action :find_tag, only: [:show]

    # def new 
    #     @tag = Tag.new
    # end

    # def create 
    # end

    def show 
    end

private

    def find_tag 
        @tag = Tag.find(params[:id])
    end

end
