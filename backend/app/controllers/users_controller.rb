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

  # def index
  #   authenticate
  #   @users = User.all
  #   render json: { users: @users }
  # end

  def add_a_friend
    authenticate
    @user
  end

  def show
    authenticate
    @user
    render json: { id: @user.id, bio: @user.bio, email: @user.email, photo: @user.photo, username: @user.username, zip: @user.zip }
  end

end
