class MealSerializer < ActiveModel::Serializer

  attributes :id, :name, :price, :category, :img_url

  has_many :restaurants
end
