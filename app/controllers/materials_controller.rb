class MaterialsController < ApplicationController
    def index
        materials = Material.find(params[:id])
        render json: materials
    end

    def show
        material = Material.find(params[:id])
        render json: material
    end

    def create
        material = Material.new(material_params)

        if material.save
            render json: material
        else
            render json: {error: "unable to save"}
        end
    end

    def update
        material = Material.find(params[:id])
        render json: material.update(material_params)
    end

    def destroy
        material = Material.find(params[:id])
        material.delete
    end

    private
    def material_params
        params.require(:material).permit(:name,:specs,:width,:height,:thickness,:notes)
    end
end
