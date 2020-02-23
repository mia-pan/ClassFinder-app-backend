class CategoriesController < ApplicationController
    def index 
        categories = Category.all
        render :json => categories
    end 

    def show 
        category = Category.find_by(name: params[:id])
        render :json => category
    end 

    def create 
        category = Category.create(category_params)
        render :json => category
    end 

    def update 
        category = Category.find(params[:id])
        category.update(category_params)
        render :json => category
    end 

    def destroy
        category = Category.find(params[:id])
        category.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def category_params
        params.require(:category).permit(:name, :description)
    end 

end
