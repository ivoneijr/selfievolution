class API::V1::GymsController < API::V1::ApplicationController

	# GET /api/v1/gyms
	# GET /api/v1/gyms?email=email@email.com
	def index
		gyms = Gym.all
	    if email = params[:email]
	      gyms = gyms.where(email: email)
	    end
	    render json: gyms, root: false, status: 200
	end

# GET /gyms/1
  def show
  	@gym = Gym.find(params[:id])
    render json: @gym
  end

	def create
    person = Person.new(name: gym_params[:name],
                        phone: gym_params[:phone],
                        webpage: gym_params[:webpage],
                        sex: gym_params[:sex])
    
    user = User.new(party: person,
                    email: gym_params[:email],
                    password: gym_params[:password],
                    facebook: gym_params[:facebook],
                    twitter: gym_params[:twitter])

    gym = Gym.new(user:user)
    
    if gym.save
      render json: gym, status: 201, location: gym
    else
      render json: gym.errors, status: 422
    end
  end

  private
    def gym_params
      params.require(:gym).permit(:name, 
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