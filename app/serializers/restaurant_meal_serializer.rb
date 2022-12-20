class RestaurantMealSerializer < ActiveModel::Serializer
  attributes :id, :meal_id, :restaurant_id

  belongs_to :restaurant
  belongs_to :meal
end
