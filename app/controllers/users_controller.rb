class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    private
    def user_params
        require(:user).permit(:username)
    end
end
