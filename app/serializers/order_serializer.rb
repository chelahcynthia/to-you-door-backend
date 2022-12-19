class OrderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number, :delivery_address, :region, :city, :restaurant_id, :customer_id
end
