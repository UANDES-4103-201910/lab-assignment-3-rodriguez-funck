class Order < ApplicationRecord
  has_one :user
  belongs_to :ticket_order
end
