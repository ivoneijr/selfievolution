class API::V1::CoachesController < API::V1::ApplicationController

	# GET /api/v1/coaches
	def index
		@coaches = Coach.all
		render json: @coaches, root: false
	end

# GET /coaches/1
  def show
  	@coach = Coach.find(params[:id])
    render json: @coach
  end


end