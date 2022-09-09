class FavoritesController < ApplicationController

  def index
   
end
  def update
    favorite = Favorite.where(post:Post.find(params[:post]), user: current_user)
    if favorite == []
      Favorite.create(post: Post.find(params[:post]), user: current_user)
     @favorite_exists = true
    else
favorite.destroy_all
@favorite_exists = false
    end
    respond_to do |format|
      format.html {}
    end
  end

 
end
