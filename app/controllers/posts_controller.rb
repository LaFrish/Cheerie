class PostsController < ApplicationController

  def index
    @feeling = Feeling.find(params[:feeling_id])
    @posts = Post.all
    @posts = @feeling.posts.where(data_type: "post")
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @post = Post.new
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @post = @feeling.posts.create!(post_params)

    redirect_to feeling_path(@feeling)
  end

  def show
    @feeling = Feeling.find(params[:feeling_id])
    @post = Post.find(params[:id])
  end

  def edit
    @feeling = Feeling.find(params[:feeling_id])
    @post = Post.find(params[:id])
  end

  def update
    @feeling = Feeling.find(params[:feeling_id])
    @post = Post.find(params[:id])
    @post.update(post_params.merge([:id]))

    redirect_to feeling_cheerups_path(@cheerup)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to feeling_cheerups_path(@cheerup)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
