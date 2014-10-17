class API::V1::GymsController < API::V1::ApplicationController

	# GET /api/v1/gyms
	def index
		@gyms = Gym.all
		render json: @gyms, root: false
	end

# GET /gyms/1
  def show
  	@gym = Gym.find(params[:id])
    render json: @gym
  end


end