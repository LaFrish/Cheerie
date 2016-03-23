class PostsController < ApplicationController

  def index
    @posts = Post.all
    @feeling = Feeling.find(params[:feeling_id])
    @postss = @feeling.posts.where(data_type: "post")
  end

  def new
    @post = Post.new
    @feeling = Feeling.find(params[:feeling_id])
  end

  def create
    @post = Post.create!(post_params.merge([:id]))
    @feeling = Feeling.find(params[:feeling_id])

    redirect_to feeling_cheerups_path(@cheerup)
  end

  def show
    @post = Post.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
  end

  def edit
    @post = Post.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params.merge([:id]))
    @feeling = Feeling.find(params[:feeling_id])
    
    redirect_to feeling_cheerups_path(@cheerup)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to feeling_cheerups_path(@cheerup)
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :name, :img_url, :data_type)
  end
end
