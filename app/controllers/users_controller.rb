class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.create(user_params)

        #below generates 406 error code, 'not acceptable'
        #user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])


        # uncomment the below when ready to implement auth
        if user.valid?
            render json: { token: issue_token({id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def login
        
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            render json: { email: user.email, token: issue_token({ id: user.id }) }
    
        else
            render json: { error: 'Username/password combination invalid' }, status: 401
        end
    end

    def validate
        user = get_current_user
        if user
            render json: { email: user.email, token: issue_token({ id: user.id })  }
        else
            render json: {error: 'Invalid token'}, status: 401
        end
    end

    private
    def user_params
        require(:user).permit(:email, :password, :password_confirmation)
        #getting the following error when trying to use strong params:
        # TypeError Exception: no implicit conversion of Symbol into String
    end
end
