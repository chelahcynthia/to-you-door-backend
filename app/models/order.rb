class Order < ApplicationRecord

    belongs_to :restaurant
    belongs_to :customer

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true
    validates :phone_number, length: { is: 10 }
    validates :delivery_address, presence: true
    validates :region, presence: true
    validates :city, presence: true

    

end
