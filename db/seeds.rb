Network.destroy_all
User.destroy_all

puts "Destroyed data"

christelle = User.create!(email: "christelle@test.com", password: "123456", first_name: "christelle", last_name: 'kwizera', manager: false)
christelle.avatar.attach(io: File.open('app/assets/images/christelle.png'), filename: 'christelle.png', content_type: 'image/png')
djibril = User.create!(email: "djibril@test.com", password: "123456", first_name: "djibril", last_name: "hategekimana", manager: true)
djibril.avatar.attach(io: File.open('app/assets/images/djibril.png'), filename: 'djibril.png', content_type: 'image/png')
romain = User.create!(email: "romain@test.com", password: "123456", first_name: "romain", last_name: "zirimwabagabo", manager: true)
romain.avatar.attach(io: File.open('app/assets/images/romain.png'), filename: 'romain.png', content_type: 'image/png')
bosco = User.create!(email: "bosco@test.com", password: "123456", first_name: "bosco", last_name: "urazibara", manager: true)
bosco.avatar.attach(io: File.open('app/assets/images/bosco.png'), filename: 'bosco.png', content_type: 'image/png')
christine = User.create!(email: "christine@test.com", password: "123456", first_name: "christine", last_name: "iradukunda", manager: true)
christine.avatar.attach(io: File.open('app/assets/images/christine.png'), filename: 'christine.png', content_type: 'image/png')
emile = User.create!(email: "emile@test.com", password: "123456", first_name: "emile", last_name: "rugero", manager: true)
emile.avatar.attach(io: File.open('app/assets/images/emile.png'), filename: 'emile.png', content_type: 'image/png')

puts "Created users"

rwintare_network = Network.create!(name: "Rwintare", address: '157 KN 2 Ave, Kigali, Rwanda', number_of_households: 32, max_households: 45)
kavumu_network = Network.create!(name: "Kavumu", address: 'KK 329 St, Kigali, Rwanda', number_of_households: 53, max_households: 53)
karukoro_network = Network.create!(name: "Karukoro", address: 'KG 5 Ave, Kigali, Rwanda', number_of_households: 6, max_households: 18)
kanyinya_network = Network.create!(name: "Kanyinya", address: '19 KG 573 St, Kigali, Rwanda', number_of_households: 12, max_households: 33)
nyarufunzo_network = Network.create!(name: "Nyarufunzo", address: 'KG 28 Ave, Kigali, Rwanda', number_of_households: 75, max_households: 135)
rusizi_network = Network.create!(name: "Rusizi", address: '131 KN 2 Ave, Kigali, Rwanda', number_of_households: 85, max_households: 100)
rukoronko_network = Network.create!(name: "Rukoronko", address: 'KG 12 Ave, Kigali, Rwanda', number_of_households: 41, max_households: 46)
mugesera_network = Network.create!(name: "Mugesera", address: 'KG 572 St, Kigali, Rwanda', number_of_households: 7, max_households: 10)

puts "Created Networks"
