class Meal < ApplicationRecord

    has_many :restaurant_meals
    has_many :restaurants, through: :restaurant_meals
end
