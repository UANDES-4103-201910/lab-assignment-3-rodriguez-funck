class TicketOrder < ApplicationRecord
  #has_one :order
  #has_one :ticket
  belongs_to :order
  belongs_to :ticket
end
