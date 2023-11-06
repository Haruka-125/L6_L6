class Product < ApplicationRecord
    has_one :cartitem
    # belongs_to :cart
    #belongs_to :cart_item
end
