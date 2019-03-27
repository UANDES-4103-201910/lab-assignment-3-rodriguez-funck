class TicketOrder < ApplicationRecord
  has_one :order
  has_one :ticket
end
