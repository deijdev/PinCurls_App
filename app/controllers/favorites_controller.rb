class FavoritesController < ApplicationController
    before_action :favorite_params, only: [:create]

    def create
        @favorite = Favorite.create(favorite_params)
        redirect_to "/",  notice: "Successfully Pinned"
    end

    private 

    def favorite_params
        params.require(:favorite).permit(:user_id, :post_id)
    end

end
