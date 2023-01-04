class CustomerSerializer < ActiveModel::Serializer

  attributes :id, :email, :username, :password_digest

  has_many :orders
end
