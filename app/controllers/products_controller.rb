class ProductsController << ApplicationController::Base
  def index
    @item = Item.all
  end

  def add_to_cart
    @item = Item.find(params[:id])

    current_cart << @item.id
  end
    

end