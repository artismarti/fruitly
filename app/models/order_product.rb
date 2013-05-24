class OrderProduct < ActiveRecord::Base
  attr_accessible :order_id, :price_in_pence, :product_id, :quantity
end
