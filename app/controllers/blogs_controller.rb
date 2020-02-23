class BlogsController < ApplicationController

    def index 
        blogs = Blog.all
        render :json => blogs
    end 

    def show 
        blog = Blog.find_by(title: params[:id])
        render :json => blog
    end 

    def create 
        blog = Blog.create(blog_params)
        render :json => blog
    end 

    def update 
        blog = Blog.find(params[:id])
        blog.update(blog_params)
        render :json => blog
    end 

    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def blog_params
        params.require(:blog).permit(:image, :title, :story, :user_id)
    end 

end
