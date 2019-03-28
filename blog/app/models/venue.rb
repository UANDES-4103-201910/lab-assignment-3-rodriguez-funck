class Venue < ApplicationRecord
  has_many :events

  def last_attendance
    attendance = 0
    self.events.order("created_at").last.tickets.each do |tickets|
      tickets.ticket_orders.each do |ticket_order|
        attendance += ticket_order.amount
      end
    end
    return attendance
  end

end
