class Api::V1::UsersController < ApplicationController
    
  before_action :authenticate_user, only: :index

    def index
        users = User.all 
        render json: users
    end
    
    def create
        user = User.new(user_params)

        if user.save
            payload = {'user_id': user.id}
            token = encode(payload)
            render json: {
                user: user,
                token: token,
                authenticated: true,
            }
        else
            render json: { message: 'There was an error creating your account' }
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
