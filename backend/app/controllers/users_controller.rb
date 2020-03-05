class UsersController < ApplicationController

  def create
  @user = User.create(
    username: params[:username],
    email: params[:email],
    bio: params[:bio],
    zip: params[:zip],
    photo: params[:photo] ? params[:photo] : "/assets/user_photo/default.jpg",
    password: params[:password]
  )

  render json: { user: @user }, status: :created
  end

end
