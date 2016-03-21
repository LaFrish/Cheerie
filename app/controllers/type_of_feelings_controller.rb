class FeelingsController < ApplicationController

  def index
    @feelings = Feeling.all
  end

  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.create!(feeling_params)

    redirect_to feeling_path(@feeling)
  end

  def show
    @feeling = Feeling.find(params[:id])
  end

  def edit
    @feeling = Feeling.find(params[:id])
  end

  def update
    @feeling = Feeling.find(params[:id])
    @feeling.update(feeling_params)

    redirect_to feeling_path(@feeling)
  end

  def destroy
    @feeling = Feeling.find(params[:id])
    @feeling.destroy

    redirect_to feelings_path
  end

  private
  def feeling_params
    params.require(:feeling).permit(:name, :photo_url, :nationality)
  end
end
