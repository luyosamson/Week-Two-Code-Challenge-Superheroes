# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding data ..."
heroes = Hero.create([
    {name: "Samson", super_name: "Sam"},
    {name: "David", super_name: "Dev"},
    {name: "Mary", super_name: "Maria"},
    {name: "Emmanuel", super_name: "Ema"}
    ])

Power.create([
    { name: "Nguvu", description: "Energetic"},
    { name: "Supa Power", description: "Powerfull"},
    { name: "Indomitable", description: "Powerfull"}
    ])

heropowers = HeroPower.create([
    {strength: "Strong", hero_id: 1,power_id: 1},
    {strength: "Strong", hero_id: 2,power_id: 1},
    {strength: "Average", hero_id: 3,power_id: 2},
    {strength: "Weak", hero_id: 4,power_id: 3}
    ])
puts "done seeding"