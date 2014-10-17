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
    pupil = Pupil.new(pupil_params)
    if pupil.save
      render json: pupil, status: 201, location: pupil
    else
      render json: pupil.errors, status: 422
    end
  end

  private
    def pupil_params
      params.require(:pupil).permit(:email, :facebook, :password, :twitter)
    end
end

	