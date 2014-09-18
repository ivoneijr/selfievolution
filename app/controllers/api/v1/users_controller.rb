class API::V1::UsersController < API::V1::ApplicationController

  # GET /api/v1/users
  def index
    @users = User.all
    render json: @users, root: false
  end

# GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @user
  end


end