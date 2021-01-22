class ApplicationController < ActionController::Base
  helper_method :current_cart

  def current_cart
    session[:cart] ||= []
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
