require_relative( 'models/ticket' )
require_relative( 'models/customer' )
require_relative( 'models/film' )

require( 'pry-byebug' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({
  'name' => 'Paco',
  'funds' => '20'
})
customer1.save()

customer2 = Customer.new({
  'name' => 'Paquito',
  'funds' => '15'
})
customer2.save()

film1 = Film.new({
  'title' => 'Star Wars IV: A New Hope',
  'price' => '7'
})
film1.save()

film2 = Film.new({
  'title' => 'Star Wars V: Empire strikes back',
  'price' => '7'
})
film2.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film2.id
  })
ticket2.save

Customer.all()
Film.all()
Ticket.all()

binding.pry
nil
