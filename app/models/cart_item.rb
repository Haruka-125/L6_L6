class CartItem < ApplicationRecord
    belongs_to :product
    #has_one :product
    belongs_to :cart
end
