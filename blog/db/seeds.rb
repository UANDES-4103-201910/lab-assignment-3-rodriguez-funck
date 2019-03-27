# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create five different users.
users = User.create
  ([ {name: "Cristian", last_name: "Funck", password: "123123", address: "Alicahue 237", phone: 987607327},
    {name: "Juan", last_name: "Rodriguez", password: "456456", address: "Rojas Magallanes 2378", phone: 978096789},
    {name: "Andrea", last_name: "Perez", password: "AndPer321", address: "Av. Apoquindo 543", phone: 975786437},
    {name: "Carlos", last_name: "Mercado", password: "30101995", address: "El hualle 7652", phone: 948908327},
    {name: "Patricio", last_name: "Rubio", password: "patmat4", address: "las vertientes 201", phone: 974927364} ] )

#Create three different events.
events = Event.create
  ([ {name: "Lollapalooza", description: "Festival de musical que se realiza anualmente y trae una gran cantidad de bandas de diversos estilos", start_date: DateTime.new(2019,03,30), venue_id: 1},
     {name: "Concierto Paul McCartney", description: "Último concierto de Paul McCartney en Chile", start_date: DateTime.new(2019,03,20), venue_id: 2},
      {name: "Festival de Viña del Mar", description: "Festival internacional de la canción que se realiza anulmente en la Quinta Vergara", start_date: DateTime.new(2021,06,17), venue_id: 3}])

#Each event must have at least three ticket categories.
tickets = Ticket.create
  ([ {event_id: 1, price: 568400, categorie: "Vip"},
    {event_id: 1, price: 367500, categorie: "Golden"},
    {event_id: 1, price: 128600, categorie: "Andes"},
    {event_id: 2, price: 250300, categorie: "Pacífico"},
    {event_id: 2, price: 367800, categorie: "Silver"},
    {event_id: 2, price: 728900, categorie: "Diamante"},
    {event_id: 3, price: 121500, categorie: "Galería"},
    {event_id: 3, price: 355200, categorie: "Vip"},
    {event_id: 3 ,price: 280100, categorie: "Golden"}])

#Each user must have bought one ticket for each event.
orders = Order.create
  ([ {user_id: 1}, {user_id: 2}, {user_id: 3}, {user_id: 4}, {user_id: 5},])
ticket_orders = TicketOrder.create
  ([ {order_id: 1, ticket_id: 9, amount: 2},
    {order_id: 2, ticket_id: 7, amount: 3},
    {order_id: 3, ticket_id: 1, amount: 1},
    {order_id: 4, ticket_id: 3, amount: 4},
    {order_id: 5, ticket_id: 2, amount: 10}])
