class ProductsController < ApplicationController
  def search

  end

  def result
    @products_ids = Product.search(params[:product][:lookup]).map(&:id)
    @products = Product.find(@products_ids)
    respond_to do |format|
      format.js
    end
  end
end
