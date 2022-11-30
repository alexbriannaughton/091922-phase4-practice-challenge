class RestaurantsController < ApplicationController
    def index
        render json: Restaurant.all
    end

    def show
        r = Restaurant.find(params[:id])
        render json: r, serializer: RestaurantPizzasSerializer
    end

    def destroy
        Restaurant.find(params[:id]).destroy
        head :no_content
    end

end
