class CreateTicketOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :ticket_orders do |t|
      t.integer :order_id
      t.integer :ticket_id
      t.integer :amount

      t.timestamps
    end
  end
end
