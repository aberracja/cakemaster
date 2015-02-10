# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "example@email.com", password: "password")

6.times do |i|
  user.cakes.create(name: "Cake ##{i}", cake_type: "gluten-free", description: "Description: 
You need: 
200g flour 
150g sugar 
100g butterflies
6 golden eggs 
2 teaspoons sturdust 
1 teaspoon baking soda 

directions: 
1. Mix all! 
2. Bake in the preheated oven at 160°C for 30-40 minutes.")
end
