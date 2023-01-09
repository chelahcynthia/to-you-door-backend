class CustomerSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :email, :username

  has_many :orders
end
