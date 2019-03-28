class User < ApplicationRecord
  has_many :orders
  def most_expensive_ticket
    order = Order.all
    ticketor = TicketOrder.all
    m1 = order.joins(ticketor)
    tick = Ticket.all
    m2 = m1.joins(tick)
    user_tickets = m2.where("user_id = ?", self.id)
    max_amount = user_tickets.maximum("price")
    return max_amount
  end
end
