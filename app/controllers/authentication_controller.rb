class AuthenticationController < ApplicationController
    def login
        @user = User.find_by(email: params[:email])

        if !@user
            render json: {message: 'User does not exist.'}, status: :unauthorized
        else
            if !@user.authenticate(params[:password])
                
            else
            end
        end
    end
end
