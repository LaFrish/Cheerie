 class CheerupsController < ApplicationController

  def index
    @feeling = Feeling.find(params[:feeling_id])
    @cheerups = @feeling.cheerups
    @gifs = @cheerups.where(data_type: "gif")
    @imgs = @cheerups.where(data_type: "img")
    @posts = @feeling.posts.where(data_type: "post")
  end

  def new
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.new
  end

  def create
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = @feeling.cheerups.create!(cheerup_params)

    redirect_to feeling_cheerups_path(@feeling)
  end

  def show
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find(params[:id])
    @gifs = @feeling.cheerup.where(data_type: "gif")
    @imgs = @feeling.cheerup.where(data_type: "img")
    @postss = @feeling.post.where(data_type: "post")
  end

  def edit
    @cheerup = Cheerup.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
  end

  def update
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find(params[:id])
    @cheerup.update(cheerup_params)

    redirect_to feeling_cheerup_path(@cheerup)
  end

  def destroy
    @feeling = Feeling.find(params[:feeling_id])
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy

    redirect_to feeling_cheerup_path(@cheerup)
  end

  private
  def cheerup_params
    params.require(:cheerup).permit(:name, :img_url, :data_type)
  end
end
