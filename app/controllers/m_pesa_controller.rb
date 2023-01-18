require_relative './mpesa/mpesa_express.rb'

class MPesaController < ApplicationController

    def create
        @phone_number = params[:phone_number]
        @amount = params[:amount]

        render json: mpesa_pay(@phone_number, @amount)
    end

    
    private
    def mpesa_params
        params.permit(:phone_number, :amount)
    end
end
