class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def create
        @newUser = User.create(
            name: params[:name],
            age: params[:age],
            bio: params[:bio],
            rating: params[:rating],
            email: params[:email],
            password: params[:password],
        )

        render json: @newUser
    end

end
