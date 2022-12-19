class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category, :img_url
end
