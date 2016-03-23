class TagsController < ApplicationController

  def index
    @tags = Tag.all
    # @feeling = Feeling.find(params[:feeling_id])
    # @gifs = @feeling.cheerups.where(data_type: "gif")
    # @imgs = @feeling.cheerups.where(data_type: "img")
    # @postss = @feeling.posts.where(data_type: "post")
  end
  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find(params[:cheerup_id])
    @post = Post.find(params[:post_id])
    @tag = @cheerup.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find_or_create_by(name: params[:cheerup_name])

    existing_tag = Tag.find_by(feeling: @feeling, cheerup: @cheerup, post: @post)
    unless existing_tag
      @cheerup.tags.create(cheerup: @cheerup)
    end
    redirect_to feeling_cheerups_path(@cheerup)
  end

  def show
    @tag = Tag.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
    @tags = @feeling.cheerups.where(:feeling_name])
  end

  def edit
    @tag = Cheerup.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find(params[:cheerup_id])
    @post = Post.find(params[:post_id])

    redirect_to feeling_cheerups_path(@cheerup)
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
