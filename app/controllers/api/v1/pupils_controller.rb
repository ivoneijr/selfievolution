class API::V1::PupilsController < API::V1::ApplicationController



	def index
	
		@pupils = Pupil.all
		render json: @pupils, root: false

	end



end