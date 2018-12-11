class ArtistController < ApplicationController

  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:id)
  end

end
