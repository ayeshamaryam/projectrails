class PostsController < ApplicationController 


    def index
        @posts = Post.all
    end

  def new
    @post = Post.new
end

def edit
    @post = Post.find(params[:id])
end

def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
        flash[:notice] = "Post was created successfully"
        redirect_to @post
    else
        render 'new'
    end
end

def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
        flash[:notice] = "post was updated successfully"
        redirect_to @post
    else
        render 'edit'
    end
end

def show
    @post = Post.find(params[:id])
   @favorite_exists = Favorite.where(post: @post, user: current_user) == [] ? false : true

end



def destroy
    @post = Post.find(params[:id])
    @post.destroy
   redirect_to root_path

end

private

def post_params
    params.require(:post).permit(:title, :content)
end


end