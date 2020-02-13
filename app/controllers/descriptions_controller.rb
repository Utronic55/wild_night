class DescriptionsController < ApplicationController
  def index
  end
  def show
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :text)
  end

end
