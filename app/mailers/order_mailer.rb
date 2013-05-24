class OrderMailer < ActionMailer::Base
  default from: "artismarti@gmail.com"

  add_template_helper ApplicationHelper

  def customer(order)
    @order = order

    mail to: @order.email, subject: "New order from Fruitly"
  end

  def admin(order)
    @order = order

    mail to: "artismarti@gmail.com", subject: "New order from customer"
  end
end
