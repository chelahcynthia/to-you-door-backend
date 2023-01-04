class AuthController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        customer = Customer.find_by(username: params[:username])
        if customer && .authenticate(params[:password])
            token = encode_token({ cutomer_id: customer.id })
            render json: { cutomer: CustomerSerializer.new(customer), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end

    # private

    # def user_login_params
    #     params.require(:user).permit(:username, :password)
    # end

end