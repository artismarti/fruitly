class ProductsController < ApplicationController
  def index
  	@products = Product.page(params[:page]).per(1).order("price_in_pence asc")
  end

  def show
  	@product = Product.find(params[:id])
  end
end
