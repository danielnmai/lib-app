class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        render :new
    end

    def create
        user = User.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password]
            )
        redirect_to users_path
    end

    def show
        @user = User.find(params[:id])
    end


end
