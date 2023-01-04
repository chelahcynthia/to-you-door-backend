class Order < ApplicationRecord

    belongs_to :restaurant
    belongs_to :customer

    validates :phone_number, presence: true
end
