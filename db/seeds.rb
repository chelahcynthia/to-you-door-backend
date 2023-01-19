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

Meal.create!(name: "Meatloaf", description: Faker::Food.description, price: 420, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674136955/pexels-valeria-boltneva-1860205_m1dm8s.jpg" )
Meal.create!(name: "Tacos", description: Faker::Food.description, price: 300, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674136995/pexels-roman-odintsov-4958520_whazf8.jpg" )
Meal.create!(name: "Spaghetti and meatballs", description: Faker::Food.description, price: 299, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674136976/pexels-monica-turlui-7218637_cdzhbd.jpg" )
Meal.create!(name: "Croissants", description: Faker::Food.description, price: 499, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674137960/pexels-polina-tankilevitch-4109384_qpqdam.jpg" )
Meal.create!(name: "Barbecue ribs", description: Faker::Food.description, price: 389, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674138162/pexels-nerfee-mirandilla-3186654_zdaxq2.jpg" )
Meal.create!(name: "Pizza", description: Faker::Food.description, price: 320, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674138393/pexels-cottonbro-studio-3944308_xyyjo5.jpg" )
Meal.create!(name: "General T'so chicken", description: Faker::Food.description, price: 400, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674137728/pexels-ren%C3%A9-roa-12261069_fjn4nt.jpg" )
Meal.create!(name: "Hamburger", description: Faker::Food.description, price: 415, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1673955714/burger2_tquun2.jpg" )
Meal.create!(name: "Chicken nuggets", description: Faker::Food.description, price: 380, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674137827/pexels-roger-cziwerny-792024_rw9rzo.jpg" )
Meal.create!(name: "Waffles", description: Faker::Food.description, price: 459, category: Faker::Food.ethnic_category, img_url: "https://res.cloudinary.com/dphlf7a8o/image/upload/v1674137987/pexels-viktoria-alipatova-2074108_b5wczy.jpg" )
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