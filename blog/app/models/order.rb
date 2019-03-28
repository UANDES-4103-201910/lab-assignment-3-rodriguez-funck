class Order < ApplicationRecord
  has_many :ticket_orders
  has_many :tickets, through: :ticket_orders
  belongs_to :user
end
