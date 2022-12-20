class Restaurant < ApplicationRecord
    has_many :orders
    has_many :restaurant_meals
    has_many :meals, through: :restaurant_meals
end
