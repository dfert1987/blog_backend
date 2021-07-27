class CommentsController < ApplicationController
    skip_before_action :authorize only:[:index]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create 
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    private 
        def comment_params
            params.require(:comment).permit(:body, :upvotes, :downvotes, :user, :blog)
        end
end
