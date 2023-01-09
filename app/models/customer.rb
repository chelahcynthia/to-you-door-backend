class Customer < ApplicationRecord

    has_secure_password
    has_many :orders

    validates :username, presence: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    validates :email, presence: true
    validates :username, presence: true
    
end
