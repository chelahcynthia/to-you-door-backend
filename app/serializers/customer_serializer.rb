class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :user_name, :password_digest
end
