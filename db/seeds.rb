require 'faker'
Customer.destroy_all
Meal.destroy_all
Order.destroy_all
Restaurant.destroy_all
RestaurantMeal.destroy_all

puts '...Seeding data'
Customer.create!( first_name: "Cynthia", last_name: "Chelah", username: "chelah", email: "chelah@gmail.com", password:"hello", password_confirmation: "hello" )
Customer.create!( first_name: "Dan", last_name: "Muendo", username: "don", email: "dan@gmail.com", password:"dann", password_confirmation: "dann" )
Customer.create!( first_name: "Stewie", last_name: "Griffin", username: "stewie", email: "stewie@gmail.com", password:"hello", password_confirmation: "hello" )
Customer.create!( first_name: "Megg", last_name: "Griffin", username: "meg", email: "megg@gmail.com", password:"hello", password_confirmation: "hello" )
puts "Created customers"

Meal.create!(name: "Meatloaf", description: Faker::Food.description, price: 420, category: Faker::Food.ethnic_category, img_url: "https://b1415357.smushcdn.com/1415357/wp-content/uploads/2020/04/meals-for-dinner-1.jpg?lossy=0&strip=1&webp=1" )
Meal.create!(name: "Tacos", description: Faker::Food.description, price: 300, category: Faker::Food.ethnic_category, img_url: "https://images.pexels.com/photos/9095726/pexels-photo-9095726.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" )
Meal.create!(name: "Spaghetti and meatballs", description: Faker::Food.description, price: 299, category: Faker::Food.ethnic_category, img_url: "https://b1415357.smushcdn.com/1415357/wp-content/uploads/2020/04/meals-for-dinner-3.jpg?lossy=0&strip=1&webp=1" )
Meal.create!(name: "Fajitas", description: Faker::Food.description, price: 499, category: Faker::Food.ethnic_category, img_url: "https://b1415357.smushcdn.com/1415357/wp-content/uploads/2020/04/dinner-list-1.jpg?lossy=0&strip=1&webp=1" )
Meal.create!(name: "Barbecue ribs", description: Faker::Food.description, price: 389, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/cd6cd523-06a3-4e51-864a-eeff68fae1b5.jpg" )
Meal.create!(name: "Cheese curds", description: Faker::Food.description, price: 320, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/f9ad5476-90e5-4009-ba01-418ea57b5ed7.jpg" )
Meal.create!(name: "General T'so chicken", description: Faker::Food.description, price: 400, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/3d5be4bd-89c7-407d-938e-afdf997df549.jpg" )
Meal.create!(name: "Hamburger", description: Faker::Food.description, price: 415, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/26c8009d-85df-48eb-80ba-2e0977a4044d.jpg" )
Meal.create!(name: "Chicken nuggets", description: Faker::Food.description, price: 380, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/613f6d7e-2c1b-4524-843c-bd80f1afe108.jpg" )
Meal.create!(name: "Waffles", description: Faker::Food.description, price: 459, category: Faker::Food.ethnic_category, img_url: "https://www.listchallenges.com/f/items/f9ca465b-1055-4411-b71d-a45a997876e8.jpg" )
puts "Created meals"


6.times do |i|
  Restaurant.create!(
      name: Faker::Restaurant.name,
      review: Faker::Restaurant.review
  )

end
puts "Created restaurants"

Order.create!( first_name: "Cynthia", last_name: "Chelah", phone_number: 0706123456, region: "Upperhill", city: "Nairobi", delivery_address: "Britam", restaurant_id: 1, customer_id: 1)

puts "Created orders"

RestaurantMeal.create(meal_id: 1, restaurant_id: 1)
RestaurantMeal.create(meal_id: 2, restaurant_id: 2)
RestaurantMeal.create(meal_id: 3, restaurant_id: 3)
RestaurantMeal.create(meal_id: 4, restaurant_id: 4)
RestaurantMeal.create(meal_id: 5, restaurant_id: 5)
RestaurantMeal.create(meal_id: 6, restaurant_id: 6)
RestaurantMeal.create(meal_id: 7, restaurant_id: 1)
RestaurantMeal.create(meal_id: 8, restaurant_id: 2)
RestaurantMeal.create(meal_id: 9, restaurant_id: 3)
RestaurantMeal.create(meal_id: 10, restaurant_id: 4)

puts '...Done seeding!'