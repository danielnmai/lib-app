class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            login(user)
            redirect_to user_path(user)
        else
            redirect_to "/login"
        end
    end

    def destroy
        logout
        redirect_to users_path
    end
end
