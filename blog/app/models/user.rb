class User < ApplicationRecord
  has_many :orders

  def most_expensive_ticket_bought
    prices = [0]
    self.orders.each do |order|
        order.tickets.each do |ticket|
          prices.push(ticket.price)
        end
    end
    return prices.max
  end

  def most_expensive_ticket_bought_between(start_date,end_date)
    prices = [0]
    self.orders.each do |order|
        order.tickets.where(:created_at => start_date.beginning_of_day..end_date.end_of_day).each do |ticket|
          prices.push(ticket.price)
        end
    end
    return prices.max
  end

  #def last_event
  #  self.orders.each do |order|
#        Event.where()
#        end
#    end
  #end
end
