Comment.destroy_all
Task.destroy_all
ServiceEquipment.destroy_all
WaterpointEquipment.destroy_all
Equipment.destroy_all
Waterpoint.destroy_all
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

painting = Service.create(name: "Painting", frequency: 12)
maintenance = Service.create(name: "Maintenance Check", frequency: 6)
cleaning = Service.create(name: "Cleaning", frequency: 1)
catridge = Service.create(name: "Cartridge Replacement", frequency: 6)
replacement = Service.create(name: "Replacement", frequency: 2)
resin = Service.create(name: "Resin Refill", frequency: 2)
general = Service.create(name: "General Service", frequency: 6)

puts "Created Services"

# Painting
ServiceEquipment.create(equipment: kiosk, service: painting)
# Maintenance
ServiceEquipment.create(equipment: kiosk, service: maintenance)
ServiceEquipment.create(equipment: grundfos_pump, service: maintenance)
ServiceEquipment.create(equipment: solar_pannels, service: maintenance)
ServiceEquipment.create(equipment: generator, service: maintenance)
ServiceEquipment.create(equipment: booster_pump, service: maintenance)
# Cleaning
ServiceEquipment.create(equipment: kiosk, service: cleaning)
ServiceEquipment.create(equipment: solar_pannels, service: cleaning)
ServiceEquipment.create(equipment: filter_system, service: cleaning)
# Cartridge
ServiceEquipment.create(equipment: filter_system, service: catridge)
ServiceEquipment.create(equipment: gac_cto, service: catridge)
ServiceEquipment.create(equipment: klorman, service: catridge)

# Replacement
ServiceEquipment.create(equipment: grundfos_pump, service: replacement)
ServiceEquipment.create(equipment: solar_pannels, service: replacement)
ServiceEquipment.create(equipment: softener, service: replacement)
ServiceEquipment.create(equipment: generator, service: replacement)
ServiceEquipment.create(equipment: booster_pump, service: replacement)

# Resin
ServiceEquipment.create(equipment: filter_system, service: resin)
ServiceEquipment.create(equipment: gac_cto, service: resin)
ServiceEquipment.create(equipment: klorman, service: resin)

# General
ServiceEquipment.create(equipment: kiosk, service: general)
ServiceEquipment.create(equipment: generator, service: general)

puts "Service Equipment"

task_one = Task.create(title: "Fix solar panel", start_date: Date.new(2022, 6, 12), end_date: Date.new(2022, 2, 14), extra_info: "Please fix the solar panel", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: romain, equipment: solar_pannels, service: general, waterpoint: rwintare_nexus, network: rwintare_network)
task_two = Task.create(title: "Clean Nexus", start_date: Date.new(2022, 6, 8), end_date: Date.new(2022, 6, 8), extra_info: "Clean the outside area of the Nexus", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: kiosk, service: cleaning, waterpoint: rusizi_nexus, network: rusizi_network)
task_three = Task.create(title: "Replace filter", start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 6, 2), extra_info: "Replace the dirty filter", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: bosco, equipment: klorman, service: replacement, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_four = Task.create(title: "Kiosk check up", start_date: Date.new(2022, 6, 29), end_date: Date.new(2022, 6, 30), extra_info: "Do a check-up visit on the kiosk", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: kiosk, service: general, waterpoint: kavumu_nexus, network: kavumu_network)
task_five = Task.create(title: "Totalizer check up", start_date: Date.new(2022, 6, 22), end_date: Date.new(2022, 6, 24), extra_info: "Do a maintenance check-up on the totalizer", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: totalizer, service: maintenance, waterpoint: rwintare_nexus, network: rwintare_network)
task_six = Task.create(title: "Meter maintenance", start_date: Date.new(2022, 6, 12), end_date: Date.new(2022, 6, 15), extra_info: "Perform maintenance on the meter", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: paid_meter, service: maintenance, waterpoint: kavumu_nexus, network: kavumu_network)
task_seven = Task.create(title: "Filter cartridge replacement", start_date: Date.new(2022, 6, 20), end_date: Date.new(2022, 6, 21), extra_info: "Catridge replacement on the filter required", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: bosco, equipment: gac_cto, service: catridge, waterpoint: kanyinya_nexus, network: kanyinya_network)
task_nine = Task.create(title: "Softener check", start_date: Date.new(2022, 2, 1), end_date: Date.new(2022, 2, 6), extra_info: "Check on the softener Djibirl", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_eight = Task.create(title: "Maintenance task", start_date: Date.new(2022, 3, 2), end_date: Date.new(2022, 3, 5), extra_info: "Please make sure to do the maintenance task", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: softener, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_nine = Task.create(title: "Totalizer maintenance", start_date: Date.new(2022, 2, 3), end_date: Date.new(2022, 2, 5), extra_info: "Task must be schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed on time", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: totalizer, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_ten = Task.create(title: "Site location check", start_date: Date.new(2022, 1, 5), end_date: Date.new(2022, 1, 7), extra_info: "Check out site location before heading out", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: solar_pannels, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_eleven = Task.create(title: "Klorman check", start_date: Date.new(2022, 4, 6), end_date: Date.new(2022, 4, 7), extra_info: "Please take all the required equipment needed", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: klorman, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_twelve = Task.create(title: "Task completion", start_date: Date.new(2022, 5, 7), end_date: Date.new(2022, 5, 8), extra_info: "Make sure to complete the task on time", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: paid_meter, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_thirteen = Task.create(title: "Maintenance check", start_date: Date.new(2022, 5, 7), end_date: Date.new(2022, 5, 8), extra_info: "Watch out for the task details", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: gac_cto, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_fourteen = Task.create(title: "Grundfos pump check", start_date: Date.new(2022, 5, 8), end_date: Date.new(2022, 5, 9), extra_info: "Check with Chris first on what needs to be done", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: grundfos_pump, service: maintenance, waterpoint: karukoro_nexus, network: karukoro_network)
task_fifteen = Task.create(title: "General check up", start_date: Date.new(2022, 5, 8), end_date: Date.new(2022, 5, 9), extra_info: "Please remember to fill out the completion form", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: romain, equipment: grundfos_pump, service: general, waterpoint: kavumu_nexus, network: kavumu_network)
task_sixteen = Task.create(title: "Equipment repair", start_date: Date.new(2022, 7, 8), end_date: Date.new(2022, 7, 10), extra_info: "Please upload an image of the equipment repaired", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: tank_5m3, service: general, waterpoint: kavumu_nexus, network: kavumu_network)
task_seventeen = Task.create(title: "Tank check", start_date: Date.new(2022, 7, 9), end_date: Date.new(2022, 7, 11), extra_info: "Check with Christelle on the details of the task", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: tank_5m3, service: general, waterpoint: kavumu_node, network: kavumu_network)
task_eighteen = Task.create(title: "Tank maintenance", start_date: Date.new(2022, 8, 10), end_date: Date.new(2022, 8, 11), extra_info: "Take Emile with you on site and work together", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: tank_10m3, service: general, waterpoint: kavumu_node, network: kavumu_network)
task_nineteen = Task.create(title: "Tank repair", start_date: Date.new(2022, 8, 10), end_date: Date.new(2022, 8, 12), extra_info: "Ask christine for help on this task", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: tank_10m3, service: general, waterpoint: rwintare_nexus, network: rwintare_network)
task_twenty = Task.create(title: "Replace filter", start_date: Date.new(2022, 8, 11), end_date: Date.new(2022, 8, 12), extra_info: "Please replace the filter as described", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: filter_system, service: replacement, waterpoint: rwintare_nexus, network: rwintare_network)
task_thirteen = Task.create(title: "Truck acquiring", start_date: Date.new(2022, 8, 12), end_date: Date.new(2022, 8, 12), extra_info: "Site is off the grid and requires the truck", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: filter_system, service: general, waterpoint: rwintare_nexus, network: rwintare_network)
task_fourteen = Task.create(title: "Fix water leak", start_date: Date.new(2022, 9, 12), end_date: Date.new(2022, 9, 13), extra_info: "Water has been leaking from the filter - please check", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: filter_system, service: general, waterpoint: rwintare_node, network: rwintare_network)
task_fifteen = Task.create(title: "Kiosk maintenance", start_date: Date.new(2022, 9, 13), end_date: Date.new(2022, 9, 14), extra_info: "The kiosk is old and needs a maintenance check", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: kiosk, service: maintenance, waterpoint: rusizi_nexus, network: rusizi_network)
task_sixteen = Task.create(title: "Fill form on time", start_date: Date.new(2022, 9, 13), end_date: Date.new(2022, 9, 14), extra_info: "Make sure to be on time and fill out the form", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: generator, service: general, waterpoint: rusizi_nexus, network: rusizi_network)
task_nineteen = Task.create(title: "Technician meeting", start_date: Date.new(2022, 10, 14), end_date: Date.new(2022, 10, 15), extra_info: "Take four additional technicians with you to complete the task", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: booster_pump, service: catridge, waterpoint: rusizi_nexus, network: rusizi_network)
task_twenty = Task.create(title: "Cleaning the site", start_date: Date.new(2022, 10, 14), end_date: Date.new(2022, 10, 15), extra_info: "The site requires cleaning - please make sure its done", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: kiosk, service: cleaning, waterpoint: rusizi_node, network: rusizi_network)
task_twentyone = Task.create(title: "Morning task", start_date: Date.new(2022, 10, 14), end_date: Date.new(2022, 10, 16), extra_info: "Do this task first thing in the morning", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: booster_pump, service: catridge, waterpoint: rusizi_node, network: rusizi_network)
task_twentytwo = Task.create(title: "General service", start_date: Date.new(2022, 11, 15), end_date: Date.new(2022, 11, 17), extra_info: "A general service is rquired at this site", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: electric_kit, service: general, waterpoint: rusizi_nano, network: rusizi_network)
task_twentythree = Task.create(title: "Paint Nexus", start_date: Date.new(2022, 11, 16), end_date: Date.new(2022, 11, 17), extra_info: "Nexus needs to be painted", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: kiosk, service: painting, waterpoint: rusizi_nano, network: rusizi_network)
task_twentyfour = Task.create(title: "Replace batteries", start_date: Date.new(2022, 11, 16), end_date: Date.new(2022, 11, 17), extra_info: "Make sure to take the right tools with you", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: batteries, service: catridge, waterpoint: nyarufunzo_nexus, network: nyarufunzo_network)
task_twentyfive = Task.create(title: "Service check", start_date: Date.new(2022, 12, 17), end_date: Date.new(2022, 12, 18), extra_info: "Make sure to check on the right battereis", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: batteries, service: catridge, waterpoint: nyarufunzo_nexus, network: nyarufunzo_network)
task_twentysix = Task.create(title: "Nyarufunzu switch check", start_date: Date.new(2022, 12, 18), end_date: Date.new(2022, 12, 19), extra_info: "Please check on the switch at Nyarufunzu", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: switch, service: catridge, waterpoint: nyarufunzo_nexus, network: nyarufunzo_network)
task_swentyseven = Task.create(title: "Catridge switch replacement", start_date: Date.new(2022, 12, 19), end_date: Date.new(2022, 12, 20), extra_info: "Please complete task on time", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: switch, service: catridge, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_twentyeight = Task.create(title: "Water gauge inspection", start_date: Date.new(2022, 12, 20), end_date: Date.new(2022, 12, 21), extra_info: "Take a closer look at the gauges - water has not been runnin", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: gauges, service: catridge, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_twentynince = Task.create(title: "Nyarufunzo gauge untersuchen", start_date: Date.new(2022, 12, 21), end_date: Date.new(2022, 12, 22), extra_info: "The gauges at Nyarufunzo are not working", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: gauges, service: cleaning, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_thirty = Task.create(title: "Clean valves", start_date: Date.new(2022, 1, 22), end_date: Date.new(2022, 1, 23), extra_info: "Please clean the valves Emile", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: valves, service: cleaning, waterpoint: nyarufunzo_node, network: nyarufunzo_network)
task_thirtyone = Task.create(title: "Valve replacement", start_date: Date.new(2022, 1, 23), end_date: Date.new(2022, 1, 24), extra_info: "Ask Christelle which valves need to be replaced", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: valves, service: replacement, waterpoint: kanyinya_nexus, network: kanyinya_network)
task_thirtytwo = Task.create(title: "Maintain dosatron", start_date: Date.new(2022, 1, 24), end_date: Date.new(2022, 1, 25), extra_info: "The dosatron must be maintained", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: emile, equipment: dosatron, service: cleaning, waterpoint: kanyinya_nexus, network: kanyinya_network)
task_thirtythree = Task.create(title: "Cleaning of the Dosatron", start_date: Date.new(2022, 2, 25), end_date: Date.new(2022, 2, 26), extra_info: "Djibril please make sure to ask Christ on the details for the task", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: dosatron, service: cleaning, waterpoint: kanyinya_nexus, network: kanyinya_network)
task_thirtyfour = Task.create(title: "Extra maintenance of flow-meter", start_date: Date.new(2022, 3, 26), end_date: Date.new(2022, 3, 27), extra_info: "The flow-meter needs some extra maintenance - please also clean", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: flow_meter, service: cleaning, waterpoint: kanyinya_standpipe, network: kanyinya_network)
task_thirtyfive = Task.create(title: "Maintenance form filling", start_date: Date.new(2022, 4, 27), end_date: Date.new(2022, 4, 29), extra_info: "Djibril, dont forget to fill out the maintenance form", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: totalizer, service: cleaning, waterpoint: kanyinya_standpipe, network: kanyinya_network)
task_thirtysix = Task.create(title: "Fix controller", start_date: Date.new(2022, 4, 28), end_date: Date.new(2022, 4, 29), extra_info: "The controller is not working - please fix", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: controller, service: resin, waterpoint: kanyinya_standpipe, network: kanyinya_network)
task_thirtyseven = Task.create(title: "Technician attendance check", start_date: Date.new(2022, 5, 29), end_date: Date.new(2022, 5, 30), extra_info: "Make sure that all technicians are on time", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: controller, service: resin, waterpoint: kanyinya_standpipe, network: kanyinya_network)
task_thirtyeight = Task.create(title: "Fix chaspower", start_date: Date.new(2022, 5, 30), end_date: Date.new(2022, 5, 31), extra_info: "The chaspower must be fixed before tomorrow!", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: djibril, equipment: cashpower, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_thirtynince = Task.create(title: "Resin chaspower", start_date: Date.new(2022, 8, 31), end_date: Date.new(2022, 9, 1), extra_info: "This task is of high priority", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: djibril, equipment: cashpower, service: resin, waterpoint: karukoro_nexus, network: karukoro_network)
task_fourty = Task.create(title: "DRC Vehicle check", start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 6, 3), extra_info: "This sire is close to the DRC make sure to take the right vehicle", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: djibril, equipment: uv_165W, service: painting, waterpoint: rwintare_node, network: rwintare_network)
task_fourtyone = Task.create(title: "Replace UV", start_date: Date.new(2022, 2, 2), end_date: Date.new(2022, 2, 4), extra_info: "Please take extra care when replacing the UV - thanks Christine", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: uv_165W, service: replacement, waterpoint: rwintare_node, network: rwintare_network)
task_fourtytwo = Task.create(title: "Grundfos submersible pump maintenance", start_date: Date.new(2022, 2, 3), end_date: Date.new(2022, 2, 5), extra_info: "Bosco, please check with Christine on her task before heading out", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: grundfos_submersible_pump, service: replacement, waterpoint: rwintare_nexus, network: rwintare_network)
task_fourtythree = Task.create(title: "Grundfos pump replacement", start_date: Date.new(2022, 3, 5), end_date: Date.new(2022, 3, 7), extra_info: "The grundfos pump must be replaced - ASAP", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: grundfos_submersible_pump, service: replacement, waterpoint: rwintare_nexus, network: rwintare_network)
task_fourtyfour = Task.create(title: "Replace aquasept", start_date: Date.new(2022, 4, 12), end_date: Date.new(2022, 4, 13), extra_info: "Please ask Christelle which aquasept must be replaced", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: aquasept, service: replacement, waterpoint: rusizi_nano, network: rusizi_network)
task_fourtyfive = Task.create(title: "Aquasept untersuchen", start_date: Date.new(2022, 5, 20), end_date: Date.new(2022, 5, 22), extra_info: "This is the third replacement this month, please check whats wrong", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: aquasept, service: replacement, waterpoint: rusizi_nexus, network: rusizi_network)
task_fourtysix = Task.create(title: "Technician training", start_date: Date.new(2022, 6, 1), end_date: Date.new(2022, 6, 2), extra_info: "To all technicians, please fill out form and submit photo", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: sun_pump, service: replacement, waterpoint: rusizi_node, network: rusizi_network)
task_fourtyseven = Task.create(title: "Node check up", start_date: Date.new(2022, 7, 28), end_date: Date.new(2022, 7, 30), extra_info: "Do a check-up on the node and replace the equipment", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: sun_pump, service: replacement, waterpoint: rusizi_node, network: rusizi_network)
task_fourtyeigth = Task.create(title: "Fix leaking tank", start_date: Date.new(2022, 8, 15), end_date: Date.new(2022, 8, 17), extra_info: "Be caredul with the tank, its leaking", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: pressure_tank, service: replacement, waterpoint: kanyinya_nexus, network:kanyinya_network)
task_fourtynine = Task.create(title: "Nexus general service", start_date: Date.new(2022, 9, 8), end_date: Date.new(2022, 9, 10), extra_info: "A general service must be provided at the nexus", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: uv_55W, service: general, waterpoint: kanyinya_nexus, network:kanyinya_network)
task_fivty = Task.create(title: "Kanyinya untersuchen", start_date: Date.new(2022, 10, 5), end_date: Date.new(2022, 10, 7), extra_info: "Kanyinya is having way too many tasks this month - please check!", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: uv_55W, service: maintenance, waterpoint: kanyinya_nexus, network:kanyinya_network)
task_fivtyone = Task.create(title: "Paint Nexus", start_date: Date.new(2022, 6, 17), end_date: Date.new(2022, 6, 17), extra_info: "Nexus needs to be painted", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: bosco, equipment: kiosk, service: painting, waterpoint: rukoronko_nexus, network: rukoronko_network)
task_fivtytwo = Task.create(title: "Clean nexus", start_date: Date.new(2022, 6, 17), end_date: Date.new(2022, 6, 17), extra_info: "Nexus must be cleaned ASAP", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: christine, equipment: kiosk, service: painting, waterpoint: rukoronko_nexus, network: rukoronko_network)
task_twentythree = Task.create(title: "Mugeesra gauges fix", start_date: Date.new(2022, 6, 17), end_date: Date.new(2022, 6, 17), extra_info: "The gauges at Mugeesra are not working", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: gauges, service: cleaning, waterpoint: mugesera_nexus, network: mugesera_network)
task_fivtyfour = Task.create(title: "Paint Nexus", start_date: Date.new(2022, 6, 16), end_date: Date.new(2022, 6, 16), extra_info: "Nexus needs to be painted", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: bosco, equipment: kiosk, service: painting, waterpoint: rukoronko_nexus, network: rukoronko_network)
task_fivtyfive = Task.create(title: "Clean Nexus", start_date: Date.new(2022, 6, 16), end_date: Date.new(2022, 6, 16), extra_info: "Nexus must be cleaned ASAP", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: true, issuer: christelle, technician: christine, equipment: kiosk, service: painting, waterpoint: rukoronko_nexus, network: rukoronko_network)
task_twentysix = Task.create(title: "Mugeesra gauges fix", start_date: Date.new(2022, 6, 16), end_date: Date.new(2022, 6, 16), extra_info: "The gauges at Mugeesra are not working", schedule: ['SCHEDULED', 'UNSCHEDULED'].sample, completed: false, issuer: christelle, technician: emile, equipment: gauges, service: cleaning, waterpoint: mugesera_nexus, network: mugesera_network)

puts "Created Tasks"


