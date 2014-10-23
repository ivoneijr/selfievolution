class API::V1::PupilsController < API::V1::ApplicationController

  # GET /api/v1/pupils
  # GET /api/v1/pupils?email=email@email.com
  def index
    pupils = Pupil.all
    if email = params[:email]
      pupils = pupils.where(email: email)
    end
    render json: pupils, root: false, status: 200
  end

# GET /pupils/1
  def show
    pupil = Pupil.find(params[:id])
    render json: pupil, status: 200
  end

# POST /api/v1/pupils
  def create
    person = Person.new(name: pupil_params[:name],
                        phone: pupil_params[:phone],
                        webpage: pupil_params[:webpage],
                        sex: pupil_params[:sex])
    
    user = User.new(party: person,
                    email: pupil_params[:email],
                    password: pupil_params[:password],
                    facebook: pupil_params[:facebook],
                    twitter: pupil_params[:twitter])

    pupil = Pupil.new(user:user)
    
    if pupil.save
      render json: pupil, status: 201, location: pupil
    else
      render json: pupil.errors, status: 422
    end
  end

  private
    def pupil_params
      params.require(:pupil).permit(:name, 
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

	