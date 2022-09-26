class PlantsController < ApplicationController
    def index 
        plants = Plant.all
        render json: plants
    end
    def create
        plant = Plant.create(params.permit(:name, :price, :image))
        render json: plant, status: 201
    end
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
end
