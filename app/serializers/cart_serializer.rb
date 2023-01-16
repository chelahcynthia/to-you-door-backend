class CartSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :meal_id, :price
end
