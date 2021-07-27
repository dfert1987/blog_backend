class BlogsController < ApplicationController
    skip_before_action :authorize only:[:index, :show]
    before_action :find_blog_by_id, only:[:show, :update]

    def index
        @blogs = Blog.all
        render json: @blogs
    end

    def show
        @blog = Blog.find(params[:id])
        render json: @blog
    end

    def create
        @blog = Blog.create(blog_params)
        render json: @blog
    end

    def update 
        @blog = Blog.update(blog_params)
        render json: @blog
    end

    private
        def blog_params
            params.require(:blog).permit(:title, :subtitle, :body, :mainImage, :category, :tagOne, :tagTwo, :tagThree, :thumbsUp, :thumbsDown, :author)
        end

        def find_blog_by_id
            @blog = Blog.find(params[:id])
        end
end
