class CartItemsController < ApplicationController
  def new
    @cartitem = CartItem.new
  end

  def create
    # product = Product.find(params[:product_id])
    # ci = CartItem.new(qty: params[:qty])
    # product.cart_item = ci
    ci = CartItem.new(product_id: params[:product_id], cart_id: session[:cart_id], qty: params[:qty])
    if ci.save
      redirect_to carts_show_path
    else
      render 'new'
    end
  end

  def destroy
    cartitem = CartItem.find(params[:id])
    cartitem.destroy
    redirect_to carts_show_path
  end
end
