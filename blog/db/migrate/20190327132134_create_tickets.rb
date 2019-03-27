class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
