class CustomerSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :last_name, :email, :username, :password_digest

  has_many :orders
end
