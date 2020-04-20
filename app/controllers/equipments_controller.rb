class EquipmentsController < ApplicationController
    def index
        equipment = Equipment.find(params[:id])
        render json: equipment
    end

    def show
        equipment = Equipment.find(params[:id])
        render json: equipment
    end

    def create
        equipment = Equipment.new(equipment_params)

        if equipment.save
            render json: equipment
        else
            render json: {error: "unable to save"}
        end
    end

    def update
        equipment = Equipment.find(params[:id])
        render json: equipment.update(equipment_params)
    end

    def destroy
        equipment = Equipment.find(params[:id])
        equipment.delete
    end

    private
    def equipment_params
        params.require(:equipment).permit(:name,:keywords,:category_id,:file,:notes,:tutorial)
    end
end
