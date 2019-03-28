class Ticket < ApplicationRecord
  has_many :ticket_orders
  has_many :orders, through: :ticket_orders
  belongs_to :Event
end
