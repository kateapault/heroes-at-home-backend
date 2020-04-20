class PartsController < ApplicationController

    def create
        part = Part.new(part_params)

        if part.save
            render json: part
        else
            render json: {error: "unable to save"}
        end
    end

    def update
        part = Part.find(params[:id])
        render json: part.update(part_params)
    end

    def destroy
        part = Part.find(params[:id])
        part.delete
    end

    private
    def part_params
        params.require(:part).permit(:name,:width,:height,:thickness,:number,:equipment_id,:material_id)
    end
end
