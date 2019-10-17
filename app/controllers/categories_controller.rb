class CategoriesController < ApplicationController

    def index
        render json: Category.all
    end

    def show
        render json: Category.find(params[:id])
    end

    private
    def category_params
        require(:category).permit(:category_name)
    end
end
