class SessionsController < ApplicationController

    require 'byebug'

    def index 
        byebug
        customer = Customer.all 
        render json: customer
    end

    def create
        customer = Customer.find_by(username: params[:username])
        if customer &.authenticate(params[:password])
            session[:user_id] = customer.id
            render json: customer, Serializer: CustomerSerializer
        else
            render json: { errors: "Invalid username or password" }, status: :unauthorized
        end
    end
end