class Meal < ApplicationRecord

    has_many :restaurant_meals
    has_many :restaurants, through: :restaurant_meals

    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    validates :category, presence: true
    validates :img_url, presence: true
end
