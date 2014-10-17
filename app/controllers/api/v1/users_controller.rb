class API::V1::UsersController < API::V1::ApplicationController

  # GET /api/v1/users
  # GET /api/v1/users?email=email@email.com
  def index
    users = User.all
    if email = params[:email]
      users = users.where(email: email)
    end
    render json: users, root: false, status: 200
  end

# GET /users/1
  def show
    user = User.find(params[:id])
    render json: user, status: 200
  end

# POST /api/v1/users
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201, location: user
    else
      render json: user.errors, status: 422
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :facebook, :password)
    end
end