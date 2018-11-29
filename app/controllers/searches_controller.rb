class SearchesController < ApplicationController
# This currently has no functionality, but is a shell for advanced search.

  def new
    @search = Search.new
    @makes = Car.first

  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keyword, :make, :model, :color, :minprice, :maxprice, :vin)
  end

end
