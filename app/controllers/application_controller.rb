class ApplicationController < ActionController::Base
  helper_method :cart
  
  protect_from_forgery with: :exception

  def cart
    session[:cart] ||= []
  end
end
