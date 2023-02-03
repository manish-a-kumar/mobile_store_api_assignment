# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: aovies.first)

#Brand.destroy_all

2.times do |index|
    Brand.create!(name: Faker::Device.manufacturer,
                    country_of_origin: "Country #{index}")
end

p "Created #{Brand.count} brands."


<<-DOC
#Device.destroy_all

2.times do |index|
    Device.create!(name_of_the_phone: Faker::Device.model_name,
                    model_number: Faker::Device.build_number,
                    specifications: Faker::Device,
                    mrp: Faker::,
                    selling_price: Faker::,
                    availability: Faker::,
                    status: Faker::,   
                    image: Faker::Avatar.image,
                    imei_number: Faker::Code.imei
                    brand_id: 
                
                )
end

p "Created #{Device.count} devices."

#Specification.destroy_all

2.times do |index|
    Specification.create!(camera: Faker::Drone.max_resolution,
                            processor: Faker::,
                            ram: Faker::,
                            storage: Faker::,
                            battery: Faker::Drone.battery_capacity,
                            os_type: Faker::Computer.os
    )
end

p "Created #{Specification.count} specifications."

DOC
