class API::V1::CoachesController < API::V1::ApplicationController

	# GET /api/v1/coaches
	# GET /api/v1/coaches?email=email@email.com
	def index
    coaches = Coach.all
    if email = params[:email]
      coaches = coaches.where(email: email)
    end
    render json: coaches, root: false, status: 200
  end

	# GET /coaches/1
	def show
		@coach = Coach.find(params[:id])
	render json: @coach
	end

	# POST /api/v1/coaches
	def create
		person = Person.new(name: coach_params[:name],
		                    phone: coach_params[:phone],
		                    webpage: coach_params[:webpage],
		                    sex: coach_params[:sex])

		user = User.new(party: person,
		                email: coach_params[:email],
		                password: coach_params[:password],
		                facebook: coach_params[:facebook],
		                twitter: coach_params[:twitter])

		coach = Coach.new(user:user)

		if coach.save
		  render json: coach, status: 201, location: coach
		else
		  render json: coach.errors, status: 422
		end
	end

	private
	def coach_params
	  params.require(:coach).permit(:name, 
	                                :phone, 
	                                :webpage, 
	                                :sex, 
	                                :birthday, 
	                                :email, 
	                                :password, 
	                                :facebook, 
	                                :twitter, 
	                                :address)
	end
end