 class CheerupsController < ApplicationController

  def index
    @cheerups = Cheerup.all
    @feeling = Feeling.find(params[:feeling_id])
    @gifs = @feeling.cheerups.where(data_type: "gif")
    @imgs = @feeling.cheerups.where(data_type: "img")
    @posts = @feeling.posts.where(data_type: "post")
  end

  def new
    @cheerup = Cheerup.new
    @feeling = Feeling.find(params[:feeling_id])
  end

  def create
    @cheerup = Cheerup.create!(cheerup_params)
    @feeling = Feeling.find(params[:feeling_id])

    redirect_to feeling_cheerups_path(@feeling)
  end

  def show
    @cheerup = Cheerup.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
    @gifs = @feeling.cheerup.where(data_type: "gif")
    @imgs = @feeling.cheerup.where(data_type: "img")
    @postss = @feeling.post.where(data_type: "post")
  end

  def edit
    @cheerup = Cheerup.find(params[:id])
    @feeling = Feeling.find(params[:feeling_id])
  end

  def update
    @cheerup = Cheerup.find(params[:id])
    @cheerup.update(cheerup_params)
    @feeling = Feeling.find(params[:feeling_id])

    redirect_to feeling_cheerup_path(@cheerup)
  end

  def destroy
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy
    @feeling = Feeling.find(params[:feeling_id])

    redirect_to feeling_cheerup_path(@cheerup)
  end

  private
  def cheerup_params
    params.require(:cheerup).permit(:name, :img_url, :data_type)
  end
end
