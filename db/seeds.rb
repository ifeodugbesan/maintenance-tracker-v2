WaterpointEquipment.destroy_all
Equipment.destroy_all
Waterpoint.destroy_all
Network.destroy_all
# User.destroy_all

# puts "Destroyed data"

# christelle = User.create!(email: "christelle@test.com", password: "123456", first_name: "christelle", last_name: 'kwizera', manager: false)
# christelle.avatar.attach(io: File.open('app/assets/images/christelle.png'), filename: 'christelle.png', content_type: 'image/png')
# djibril = User.create!(email: "djibril@test.com", password: "123456", first_name: "djibril", last_name: "hategekimana", manager: true)
# djibril.avatar.attach(io: File.open('app/assets/images/djibril.png'), filename: 'djibril.png', content_type: 'image/png')
# romain = User.create!(email: "romain@test.com", password: "123456", first_name: "romain", last_name: "zirimwabagabo", manager: true)
# romain.avatar.attach(io: File.open('app/assets/images/romain.png'), filename: 'romain.png', content_type: 'image/png')
# bosco = User.create!(email: "bosco@test.com", password: "123456", first_name: "bosco", last_name: "urazibara", manager: true)
# bosco.avatar.attach(io: File.open('app/assets/images/bosco.png'), filename: 'bosco.png', content_type: 'image/png')
# christine = User.create!(email: "christine@test.com", password: "123456", first_name: "christine", last_name: "iradukunda", manager: true)
# christine.avatar.attach(io: File.open('app/assets/images/christine.png'), filename: 'christine.png', content_type: 'image/png')
# emile = User.create!(email: "emile@test.com", password: "123456", first_name: "emile", last_name: "rugero", manager: true)
# emile.avatar.attach(io: File.open('app/assets/images/emile.png'), filename: 'emile.png', content_type: 'image/png')

# puts "Created users"

rwintare_network = Network.create!(name: "Rwintare", address: '157 KN 2 Ave, Kigali, Rwanda', number_of_households: 32, max_households: 45)
kavumu_network = Network.create!(name: "Kavumu", address: 'KK 329 St, Kigali, Rwanda', number_of_households: 53, max_households: 53)
karukoro_network = Network.create!(name: "Karukoro", address: 'KG 5 Ave, Kigali, Rwanda', number_of_households: 6, max_households: 18)
kanyinya_network = Network.create!(name: "Kanyinya", address: '19 KG 573 St, Kigali, Rwanda', number_of_households: 12, max_households: 33)
nyarufunzo_network = Network.create!(name: "Nyarufunzo", address: 'KG 28 Ave, Kigali, Rwanda', number_of_households: 75, max_households: 135)
rusizi_network = Network.create!(name: "Rusizi", address: '131 KN 2 Ave, Kigali, Rwanda', number_of_households: 85, max_households: 100)
rukoronko_network = Network.create!(name: "Rukoronko", address: 'KG 12 Ave, Kigali, Rwanda', number_of_households: 41, max_households: 46)
mugesera_network = Network.create!(name: "Mugesera", address: 'KG 572 St, Kigali, Rwanda', number_of_households: 7, max_households: 10)

puts "Created Networks"

rwintare_nexus = Waterpoint.create(name: "Rwintare", waterpoint_type: "Nexus", latitude: -1.9146933, longitude: 29.99154499, kiosk: true, network: rwintare_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
rwintare_node = Waterpoint.create(name: "Rwintare", waterpoint_type: "Node", latitude: -1.912005, longitude: 29.98809833, kiosk: true, network: rwintare_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
kavumu_nexus = Waterpoint.create(name: "Kavumu", waterpoint_type: "Nexus", latitude: -1.948073, longitude: 30.019301, kiosk: true, network: kavumu_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
kavumu_node = Waterpoint.create(name: "Kavumu", waterpoint_type: "Node", latitude: -1.999342, longitude: 30.044857, kiosk: true, network: kavumu_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
karukoro_nexus = Waterpoint.create(name: "Karukoro", waterpoint_type: "Nexus", latitude: -2.006805, longitude: 30.046500, kiosk: true, network: karukoro_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
kanyinya_nexus = Waterpoint.create(name: "Kanyinya", waterpoint_type: "Nexus", latitude: -2.010965, longitude: 30.041401, kiosk: true, network: kanyinya_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
kanyinya_standpipe = Waterpoint.create(name: "Kanyinya", waterpoint_type: "Standpipe", latitude: -2.007033, longitude: 30.021015, kiosk: false, network: kanyinya_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
nyarufunzo_nexus = Waterpoint.create(name: "Nyarufunzo", waterpoint_type: "Nexus", latitude: -2.036628, longitude: 30.004724, kiosk: true, network: nyarufunzo_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
nyarufunzo_node = Waterpoint.create(name: "Nyarufunzo", waterpoint_type: "Node", latitude: -2.033838, longitude: 30.009747, kiosk: true, network: nyarufunzo_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
rusizi_nexus = Waterpoint.create(name: "Rusizi", waterpoint_type: "Nexus", latitude: -2.056658, longitude: 29.992112, kiosk: true, network: rusizi_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
rusizi_node = Waterpoint.create(name: "Rusizi", waterpoint_type: "Node", latitude: -2.045452, longitude: 29.989472, kiosk: true, network: rusizi_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
rusizi_nano = Waterpoint.create(name: "Rusizi", waterpoint_type: "Nano", latitude: -2.064227, longitude: 30.007409, kiosk: false, network: rusizi_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
rukoronko_nexus = Waterpoint.create(name: "Rukoronko", waterpoint_type: "Nexus", latitude: -2.071071, longitude: 30.170318, kiosk: true, network: rukoronko_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")
mugesera_nexus = Waterpoint.create(name: "Mugesera", waterpoint_type: "Nexus", latitude: -2.075151, longitude: 30.166183, kiosk: true, network: mugesera_network, manufacturer: "Handschumacher Ltd", design_period: 12, warranty: 16, efficiency: "A+")

puts "Created Waterpoints"

kiosk = Equipment.create!(name: "Kiosk superstructure", equipment_type: "Kiosk", warranty_valid: true)
grundfos_pump = Equipment.create!(name: "grundfos pump", equipment_type: "Pump", warranty_valid: true)
solar_pannels = Equipment.create!(name: "solar pannels", equipment_type: "Panel", warranty_valid: true)
tank_5m3 = Equipment.create!(name: "Tank 5m3", equipment_type: "Tank", warranty_valid: true)
tank_10m3 = Equipment.create!(name: "Tank 10m3", equipment_type: "Tank", warranty_valid: true)
filter_system = Equipment.create!(name: "Pentek filter system", equipment_type: "Filter", warranty_valid: true)
gac_cto = Equipment.create!(name: "2 stage filter system", equipment_type: "Filter", warranty_valid: true)
klorman = Equipment.create!(name: "Klorman inline dispenser", equipment_type: "Filter", warranty_valid: true)
softener = Equipment.create!(name: "Water softener", equipment_type: "Water", warranty_valid: true)
generator = Equipment.create!(name: "15 KVA Generator", equipment_type: "Electrics", warranty_valid: true)
booster_pump = Equipment.create!(name: "Booster pump", equipment_type: "Pump", warranty_valid: true)
electric_kit = Equipment.create!(name: "Electric kit", equipment_type: "Electrics", warranty_valid: true)
batteries = Equipment.create!(name: "Batteries", equipment_type: "Electrics", warranty_valid: true)
paid_meter = Equipment.create!(name: "Pre-Paid Meter", equipment_type: "Electrics", warranty_valid: false)
switch = Equipment.create!(name: "Pressure Switch", equipment_type: "Electrics", warranty_valid: false)
gauges = Equipment.create!(name: "Pressure gauges", equipment_type: "Meter", warranty_valid: false)
valves = Equipment.create!(name: "Ball Valves 40mm", equipment_type: "Electrics", warranty_valid: false)
dosatron = Equipment.create!(name: "Dosatron", equipment_type: "Pump", warranty_valid: false)
flow_meter = Equipment.create!(name: "Flow meter", equipment_type: "Meter", warranty_valid: false)
totalizer = Equipment.create!(name: "Totalizer", equipment_type: "Meter", warranty_valid: false)
controller = Equipment.create!(name: "Controller", equipment_type: "Electrics", warranty_valid: false)
cashpower = Equipment.create!(name: "CashPower", equipment_type: "Meter", warranty_valid: false)
uv_165W = Equipment.create!(name: "UV System 165W-140LPM", equipment_type: "Electrics", warranty_valid: false)
grundfos_submersible_pump = Equipment.create!(name: "Grundfos submersible pump", equipment_type: "Pump", warranty_valid: false)
aquasept = Equipment.create!(name: "Aquasept inline", equipment_type: "Water", warranty_valid: false)
sun_pump = Equipment.create!(name: "Sun pump", equipment_type: "Pump", warranty_valid: false)
pressure_tank = Equipment.create!(name: "Pressure tank manifold", equipment_type: "Tank", warranty_valid: false)
uv_55W = Equipment.create!(name: "UV System 55W-45LPM", equipment_type: "Electrics", warranty_valid: false)

puts "Created Equipment"

WaterpointEquipment.create!(equipment: pressure_tank, waterpoint: rwintare_nexus)
WaterpointEquipment.create!(equipment: klorman, waterpoint: rwintare_node)
WaterpointEquipment.create!(equipment: tank_5m3, waterpoint: rwintare_node)
WaterpointEquipment.create!(equipment: tank_10m3, waterpoint: rwintare_nexus)
WaterpointEquipment.create!(equipment: solar_pannels, waterpoint: rwintare_nexus)

WaterpointEquipment.create!(equipment: flow_meter, waterpoint: kavumu_node)
WaterpointEquipment.create!(equipment: uv_165W, waterpoint: kavumu_nexus)
WaterpointEquipment.create!(equipment: sun_pump, waterpoint: kavumu_nexus)
WaterpointEquipment.create!(equipment: grundfos_pump, waterpoint: kavumu_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: kavumu_node)

WaterpointEquipment.create!(equipment: flow_meter, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: generator, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: softener, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: booster_pump, waterpoint: karukoro_nexus)
WaterpointEquipment.create!(equipment: gauges, waterpoint: karukoro_nexus)

WaterpointEquipment.create!(equipment: sun_pump, waterpoint: kanyinya_nexus)
WaterpointEquipment.create!(equipment: batteries, waterpoint: kanyinya_standpipe)
WaterpointEquipment.create!(equipment: grundfos_pump, waterpoint: kanyinya_nexus)
WaterpointEquipment.create!(equipment: solar_pannels, waterpoint: kanyinya_standpipe)
WaterpointEquipment.create!(equipment: kiosk, waterpoint: kanyinya_standpipe)

WaterpointEquipment.create!(equipment: kiosk, waterpoint: nyarufunzo_nexus)
WaterpointEquipment.create!(equipment: klorman, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: valves, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: dosatron, waterpoint: nyarufunzo_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: nyarufunzo_nexus)

WaterpointEquipment.create!(equipment: sun_pump, waterpoint: rusizi_nano)
WaterpointEquipment.create!(equipment: pressure_tank, waterpoint: rusizi_node)
WaterpointEquipment.create!(equipment: aquasept, waterpoint: rusizi_nano)
WaterpointEquipment.create!(equipment: electric_kit, waterpoint: rusizi_node)
WaterpointEquipment.create!(equipment: filter_system, waterpoint: rusizi_nano)

WaterpointEquipment.create!(equipment: flow_meter, waterpoint: rukoronko_nexus)
WaterpointEquipment.create!(equipment: generator, waterpoint: rukoronko_nexus)
WaterpointEquipment.create!(equipment: softener, waterpoint: rukoronko_nexus)
WaterpointEquipment.create!(equipment: booster_pump, waterpoint: rukoronko_nexus)
WaterpointEquipment.create!(equipment: gauges, waterpoint: rukoronko_nexus)

WaterpointEquipment.create!(equipment: pressure_tank, waterpoint: mugesera_nexus)
WaterpointEquipment.create!(equipment: klorman, waterpoint: mugesera_nexus)
WaterpointEquipment.create!(equipment: tank_5m3, waterpoint: mugesera_nexus)
WaterpointEquipment.create!(equipment: tank_10m3, waterpoint: mugesera_nexus)
WaterpointEquipment.create!(equipment: solar_pannels, waterpoint: mugesera_nexus)

puts "Created Waterpoint Equipments"
























