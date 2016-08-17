class ProductsController < ApplicationController
  def search

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def products
    
  end

  def result
    @products_ids = Product.search(params[:product][:lookup]).map(&:id)
    @products = Product.find(@products_ids)
    respond_to do |format|
      format.js
    end
  end

  private

    def product_params
      params.require(:product).permit(:name, :description, :price, :imagen, :stock, :category_id)
    end


end
