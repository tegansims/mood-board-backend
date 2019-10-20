class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        # uncomment the below when ready to implement auth
        # if user.valid?
        #     render json: { token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
        # else
        #     render json: { errors: user.errors.full_messages }, status: :not_acceptable
        # end
    end

    private
    def user_params
        require(:user).permit(:email, :password, :password_confirmation)
    end
end
