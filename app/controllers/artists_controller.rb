class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    respond_to do |format|
      format.html { redirect_to products_path }
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.update(params[:id], product_params)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:id)
  end
end
