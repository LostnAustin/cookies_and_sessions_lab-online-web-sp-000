class ProductsController < ApplicationController
  def index
    @item = Item.all
  end

  def add_to_cart
    @item = Item.find(params[:id])

    cart << @item.id
  end


end
