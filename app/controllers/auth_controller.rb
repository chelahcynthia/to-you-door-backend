class AuthController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        customer = Customer.find_by(username: params[:username])
        if customer && customer.authenticate(params[:password])
            token = encode_token({ cutomer_id: customer.id })
            render json: { customer: CustomerSerializer.new(customer), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end
end