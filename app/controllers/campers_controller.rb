class CampersController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end


    def show
        campers = Camper.find_by(id: params[:id])
        render json: user
        head: not_found
    end

    def create
        camper = Camper.create(camper_params)
        render json: toy, status: :created
       
    end

    private
  
    def camper_params
        params.permit(:name, :age)
    end
      
end