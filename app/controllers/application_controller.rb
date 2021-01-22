class ApplicationController < ActionController::Base
  helper_method :current_cart

  def current_cart
    session[:cart] ||= []
  end

  def add_to_cart
    @item = Item.find(params[:id])

    current_cart << @item.id
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
