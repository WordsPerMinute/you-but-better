class AuthenticationController < ApplicationController

  def login
    @user = User.find_by( username: params[:username])
    if !@user
      render json: { error: "Invalid username or password"}, status: :unauthorized
    else
      if !@user.authenticate(params[:password])
        render json: { error: "Invalid username or password"}, status: :unauthorized
      else
        payload = { id: @user.id }
        secret = Rails.application.secrets.secret_key_base
        token = JWT.encode(payload, secret)

        render json: { token: token }
        
      end
    end
  end

end
