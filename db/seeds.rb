# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

il_trio = { name: 'Il Trio', address: 'Simon-Dach-Straße 39', phone_number: '030 23497238', category: 'italian' }
ssc = { name: 'Salami Social Club', address: 'Frankfurter Allee 43', phone_number: '030 54823781', category: 'italian' }
zola = { name: 'Zola', address: 'Paul-Lincke-Ufer 39-40', phone_number: '030 27695938', category: 'italian' }
futura = { name: 'Futura Pizza', address: ' Bänschstraße 91', phone_number: '030 98394408', category: 'italian' }
gazzo = { name: 'Gazzo', address: 'Hobrechtstraße 57', phone_number: '030 98370103', category: 'italian' }

[il_trio, ssc, zola, futura, gazzo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
