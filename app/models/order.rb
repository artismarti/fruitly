class Order < ActiveRecord::Base
  attr_accessible :address_1, :address_2, :city, :email, :name, :postcode, :strip_card_token, :stripe_customer_token
end
