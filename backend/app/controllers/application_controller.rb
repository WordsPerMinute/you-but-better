class ApplicationController < ActionController::API
  def authenticate
    auth_header = request.headers['Authorization']

    if !auth_header
      render json: { message: "this page doesn't exist, or you don't have access to it" }, status: :unauthorized
    else
      token = auth_header.split(' ')[1]
      secret = Rails.application.secret_key_base
      begin
        payload = JWT.decode(token, secret)[0]

        @user = User.find(payload["id"])
      rescue
        render json: { message: "this page doesn't exist, or you don't have access to it" }, status: :unauthorized
      end
    end
  end

  def give_user_id(passedToken)
    token = passedToken
    secret = Rails.application.secret_key_base
    payload = JWT.decode(token, secret)[0]
    @user = User.find(payload["id"])

    render json: { token: token }
  end

end
