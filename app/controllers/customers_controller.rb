class CustomersController < ApplicationController

    skip_before_action :authorized, only: [:create, :index]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def show #show with orders on the profile page
        customer = Customer.find(params[:id])
        render json: customer
    end

    def create
        customer = Customer.create!(customer_params)
        if customer 
            token = encode_token({ cutomer_id: customer.id })
            render json: { customer: CustomerSerializer.new(customer), token: token }, status: :accepted
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def update
        customer = Customer.find(params[:id])
        customer.update!(customer_update_params)
        render json: customer, status: :accepted
    end

    def index
        customers = Customer.all
        render json: customers
    end

    def destroy
        customer = Customer.find(params[:id])
        customer.destroy!
        head :no_content
    end

    private

    def customer_params
        params.permit( :username, :first_name, :last_name, :email, :password, :password_confirmation)
    end

    def render_not_found_response
        render json: { error: "Customer not found" }, status: :not_found
    end

    def customer_update_params 
      params.permit(:username, :email) 
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end