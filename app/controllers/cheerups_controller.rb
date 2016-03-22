class CheerupsController < ApplicationController

  def index
    @cheerups = Cheerup.all
    @feeling = Feeling.find(params[:feeling_id])
    @gifs = @feeling.cheerups.where(data_type: "gif")
    @imgs = @feeling.cheerups.where(data_type: "img")
    @posts = @feeling.cheerups.where(data_type: "post")
  end

  def new
    @cheerup = Cheerup.new
    @feeling = Feeling.find(params[:feeling_id])
  end

  def create
    @cheerup = Cheerup.create!(cheerup_params)

    redirect_to cheerup_path(@cheerup)
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end

  def edit
    @cheerup = Cheerup.find(params[:id])
  end

  def update
    @cheerup = Cheerup.find(params[:id])
    @cheerup.update(cheerup_params)

    redirect_to cheerup_path(@cheerup)
  end

  def destroy
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy

    redirect_to cheerups_path
  end

  private
  def cheerup_params
    params.require(:cheerup).permit(:name, :img_url, :data_type)
  end
end
