class API::V1::PupilsController < API::V1::ApplicationController

	# GET /api/v1/pupils
	def index
		@pupils = Pupil.all
		render json: @pupils, root: false
	end

# GET /pupils/1
  def show
  	@pupil = Pupil.find(params[:id])
    render json: @pupil
  end


end