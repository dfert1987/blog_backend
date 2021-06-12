class UsersController < ApplicationController
    before_action :find_user_by_id, only:[:show, :update]

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user, status: :created
    end

    def update
        @user = User.update(update_params)
        render json: @user
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email)
    end

    def update_params
        params.require(:user).permit(:username, :passowrd, :email, :avatar, :address, :twitter, :name, :dob)
    end

    def find_user_by_id 
        @user = User.find(params[:id])
    end
end
