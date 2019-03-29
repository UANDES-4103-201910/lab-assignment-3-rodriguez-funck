# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create five different users.
# User.create(name: "Cristian", last_name: "Funck", password: "123123", address: "Alicahue 237", phone: 987607327)
# User.create(name: "Juan", last_name: "Rodriguez", password: "456456", address: "Rojas Magallanes 2378", phone: 978096789)
# User.create(name: "Andrea", last_name: "Perez", password: "AndPer321", address: "Av. Apoquindo 543", phone: 975786437)
# User.create(name: "Carlos", last_name: "Mercado", password: "30101995", address: "El hualle 7652", phone: 948908327)
# User.create(name: "Patricio", last_name: "Rubio", password: "patmat4", address: "las vertientes 201", phone: 974927364 )

# #Create Venues
# Venue.create(name: "Estadio 1", address: "Avenida 1", capacity: 3000)
# Venue.create(name: "Estadio 2", address: "Avenida 2", capacity: 2000)
# Venue.create(name: "Estadio 3", address: "Avenida 3", capacity: 1000)
# #Create three different events.

# Event.create(name: "Lollapalooza", description: "Festival de musical que se realiza anualmente y trae una gran cantidad de bandas de diversos estilos", start_date: DateTime.new(2019,03,30), venue_id: 1)
# Event.create(name: "Concierto Paul McCartney", description: "Último concierto de Paul McCartney en Chile", start_date: DateTime.new(2019,03,20), venue_id: 2)
# Event.create(name: "Festival de Viña del Mar", description: "Festival internacional de la canción que se realiza anulmente en la Quinta Vergara", start_date: DateTime.new(2021,06,17), venue_id: 3)

# #Each event must have at least three ticket categories.

# Ticket.create(event_id: 1, price: 568400, category: "Vip")
# Ticket.create(event_id: 1, price: 367500, category: "Golden")
# Ticket.create(event_id: 1, price: 128600, category: "Andes")
# Ticket.create(event_id: 2, price: 250300, category: "Pacífico")
# Ticket.create(event_id: 2, price: 367800, category: "Silver")
# Ticket.create(event_id: 2, price: 728900, category: "Diamante")
# Ticket.create(event_id: 3, price: 121500, category: "Galería")
# Ticket.create(event_id: 3, price: 355200, category: "Vip")
# Ticket.create(event_id: 3 ,price: 280100, category: "Golden")

# Ticket.create(event_id: 2, price: 367800, category: "Silver")
# #Each user must have bought one ticket for each event.

# Order.create(user_id: 1)
# Order.create(user_id: 2)
# Order.create(user_id: 3)
# Order.create(user_id: 4)
# Order.create(user_id: 5)

# #Create TicketOrder

# TicketOrder.create(order_id: 1, ticket_id: 9, amount: 2)
# TicketOrder.create(order_id: 2, ticket_id: 7, amount: 3)
# TicketOrder.create(order_id: 3, ticket_id: 1, amount: 1)
# TicketOrder.create(order_id: 4, ticket_id: 3, amount: 4)
# TicketOrder.create(order_id: 5, ticket_id: 2, amount: 10)
