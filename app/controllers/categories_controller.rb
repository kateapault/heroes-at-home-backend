class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories, :include => [:equipments]
    end

    def show
        category = Category.find(params[:id])
        render json: category
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: category
        else 
            render json: {error: "category not created"}
        end
    end

    def destroy
        category = Category.find(params[:id])
        category.delete
    end
end
