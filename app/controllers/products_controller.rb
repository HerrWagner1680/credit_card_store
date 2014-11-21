class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	current_user
  end

  def create
  end
end
