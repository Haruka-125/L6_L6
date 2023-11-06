class CartsController < ApplicationController
  def show
    @cartitems = CartItem.where(cart_id: session[:cart_id])
  end
end
