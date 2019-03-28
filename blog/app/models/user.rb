class User < ApplicationRecord
  has_many :orders
  def most_expensive_ticket_bought
    prices = []
    self.orders.each do |order|
        order.tickets.each do |ticket|
          prices.push(ticket.price)
        end
    end
    return prices.max
  end
end
