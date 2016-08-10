class ProductsController < ApplicationController
  def search

  end

  def result
    @products = Product.search(params[:product][:lookup])
    binding.pry
  end
end
