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
    @feeling = Feeling.find(params[:feeling_id])
    @post = Post.find(params[:post_id])

    @cheerup = Cheerup.find_or_create_by(name: params[:cheerup_name])

    existing_tag = Tag.find_by(feeling: @feeling, cheerup: @cheerup, post: @post)
    unless existing_tag
      @cheerup.tags.create(cheerup: @cheerup)
    end
    redirect_to feeling_cheerups_path(@cheerup)
  end

  def show
    @feeling = Feeling.find(params[:feeling_id])
    @tag = Tag.find(params[:id])
    @tags = @feeling.cheerups.where(:feeling_name])
  end

  def edit
    @feeling = Feeling.find(params[:feeling_id])
    @tag = Cheerup.find(params[:id])
  end

  def destroy
    @feeling = Feeling.find(params[:feeling_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    @cheerup = Cheerup.find(params[:cheerup_id])
    @post = Post.find(params[:post_id])

    redirect_to feeling_cheerups_path(@cheerup)
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
