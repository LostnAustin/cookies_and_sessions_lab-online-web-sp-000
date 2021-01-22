class ProductsController << ApplicationController::Base
  def index
    @item = Item.all
  end

  def add_to_cart
    @item = Item.find(params[:id])

    art << @item.id
  end


end
