require 'spec_helper'

describe "Products" do

  before(:all) do
  	Product.create(title: "Orange", price_in_pence: 99)
  	Product.create(title: "Apple", price_in_pence: 199)
  end

  describe "homepage" do
  	it "should return name of site" do
  		visit root_path
  		page.should have_content("Fruitly")
  	end

  	it "should have some fruit to sell" do
  		visit root_path
  		page.should have_content("Apple")
  		page.should have_content("Orange")
  	end

  	it "should have 2 products to sell" do
  		visit root_path
  		page.should have_css(".span4")
  		page.all(:css, '.span4').length.should == 2
  	end

  end

  describe "product page" do
  	it "should show product" do
  		visit product_path(Product.first)
  		page.should have_content("Orange")
  	end

    it "should be able to add and remove things from basket" do
  		visit product_path(Product.first)

  		page.should have_content("Add to basket")
  		page.should have_content("Basket (0)")

  		click_link "Add to basket"

  		page.should have_content("added #{Product.first.title} to basket")

  		page.should have_content("Remove from basket")
  		page.should have_content("Basket (1)")

  		click_link "Remove from basket"

  		page.should have_content("removed #{Product.first.title} from basket")

  		page.should have_content("Add to basket")
  		page.should have_content("Basket (0)")
  	end

  	it "should add more than 1 fruit to basket" do
  		visit product_path(Product.first)

  		page.should have_content("Add to basket")
  		page.should have_content("Basket (0)")

  		click_link "Add to basket"

  		page.should have_content("Basket (1)")

  		visit product_path(Product.last)

  		page.should have_content("Add to basket")
  		page.should have_content("Basket (1)")

  		click_link "Add to basket"
  		
  		page.should have_content("Basket (2)")
  	end
  end
end
