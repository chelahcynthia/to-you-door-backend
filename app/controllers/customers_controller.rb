class CustomersController < ApplicationController

    skip_before_action :authorized, only: [:create]

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def show #show with orders on the profile page
        user = Customer.find(params[:id])
        render json: user
    end

    def create
        customer = Customer.create!(customer_params)
        render json: customer, status: :created
    end

    def update
        customer = Customer.find(params[:id])
        customer.update!(customer_update_params)
        render json: customer, status: :accepted
    end

    def index
        user = Customer.find_by(current_user)
        if user 
            render json: user
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    def destroy
        customer = Customer.find(params[:id])
        customer.destroy!
        head :no_content
    end

    private

    def customer_params
        params.permit(:username, :email, :password, :password_confirmation)
    end

    def render_not_found_response
        render json: { error: "Customer not found" }, status: :not_found
    end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :customer_id
    end

    def customer_update_params 
      params.permit(:username, :email) 
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end