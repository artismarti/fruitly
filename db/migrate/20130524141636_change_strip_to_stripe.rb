class ChangeStripToStripe < ActiveRecord::Migration
  def change
  	rename_column :orders, :strip_card_token, :stripe_card_token
  end
end
