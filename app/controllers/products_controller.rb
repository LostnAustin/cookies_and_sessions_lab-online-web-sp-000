class ProductsController < ApplicationController
  def index
    @item = Item.all
  end

  def add_to_cart
  cart << params[:item]
  render :index
  end


end
