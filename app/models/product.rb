class Product < ActiveRecord::Base
  attr_accessible :description, :previous_price_in_pence, :price_in_pence, :title
end
