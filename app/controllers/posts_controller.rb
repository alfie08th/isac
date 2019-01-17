class PostsController < ApplicationController
# before_action :require_login
# skip_before_action :require_login, only: [:index]

  def index
    @posts = Post.all.reverse
    @new_posts = Post.new
  end

  def create
    Post.create(title: params[:title], body: params[:body], user_id: session[:user_id], author: params[:author])
    redirect_to '/'
  end

  def edit
    @post = Post.fine(params:[id])
    if current_user.id != @post.user.index
     redirect_to '/'
    end

  end

  def update
  end

#   /post/:id
  def destroy
    @post = Post.find(params[:id])
    if current_user.id == @post.user.id
        @post.destroy
        redirect_to '/'
    end
  end

#   def post_parma
#     param.require(:post)...
#   end

end
