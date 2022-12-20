class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :orders
  has_many :meals
end
