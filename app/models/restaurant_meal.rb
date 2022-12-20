class RestaurantMeal < ApplicationRecord
    belongs_to :restaurant
    belongs_to :meal
end
