class CartsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    private

    def render_not_found_response
        render json: { error: "Cart not found" }, status: :not_found
    end

end
