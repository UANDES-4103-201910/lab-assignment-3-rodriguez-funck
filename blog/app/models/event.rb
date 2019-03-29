class Event < ApplicationRecord
  has_many :tickets
  belongs_to :venue
  def most_tickets_sold
  	#event with the most sold tickets
  	list = [0]
  	tick = Event.all
  	tick.each do |event|
  		cont = 0
  		event.tickets.each do |i|
  			cont = cont + 1
		end
		list.push([event.name, cont]) #meter nombre y cont, despues ordeno mayor a menor
	end
	mm = [0, 0]
	list.each do |x|
		if x[1] > mm[1]
			mm = x
		end
	end
	return mm
  end
  def highest_revenue
  	list = [0]
  	tick = Event.all
  	tick.each do |event|
  		title = event.name
  		total = 0 
  		event.tickets.each do |i|
  			subtotal = 0
  			data = i.price
  			i.ticket_orders.each do |j|
  				subtotal = subtotal + (j.amount * data)
			end
			total = total + subtotal
		end
		list.push([title, total])
	end
	mm = [0, 0]
	list.each do |x|
		if x[1] > mm[1]
			mm = x
		end
	end
	return mm
  end
end
