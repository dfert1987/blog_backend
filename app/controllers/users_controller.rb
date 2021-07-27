class UsersController < ApplicationController
    skip_before_action :authorize, only:[:create, :update, :show, :index]

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
        @user = User.create(
            username: params[:username],
            password: params[:password],
            email: params[:email]
        )
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
        params.require(:user).permit(:username, :password_digest, :email, :avatar, :address, :twitter, :name, :dob, :admin, :about, :address_line_1, :address_line_two, :city, :last_name, :first_name, :state)
    end

    def find_user_by_id 
        @user = User.find(params[:id])
    end
end
