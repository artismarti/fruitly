class BasketsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		basket.add(@product.id)

		flash[:success] = "added #{@product.title} to basket"
		redirect_to product_path(@product)
	end

	def destroy
		@product = Product.find(params[:product_id])
		basket.delete(@product.id)

		flash[:success] = "removed #{@product.title} from basket"
		redirect_to product_path(@product)		
	end

end
