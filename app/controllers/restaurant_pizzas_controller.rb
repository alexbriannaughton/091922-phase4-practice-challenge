class RestaurantPizzasController < ApplicationController
    def create
        rp = RestaurantPizza.create!(rp_params)
        render json: rp.pizza, status: :created
    end

    private

    def rp_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end
end