class TopController < ApplicationController
  def main
    if current_cart != nil
      redirect_to products_path
    else
      render "main"
    end
  end
end
