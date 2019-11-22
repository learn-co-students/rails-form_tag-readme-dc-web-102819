class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  	# set_post
  	# redirect_to posts_path(@post)
  end

  def create
  	Post.create(title: params[:post][:title], description: params[:post][:description])
  	redirect_to posts_path
  end


  # def set_post
  #     @post = Post.find(params[:id])
  # end
  
end
