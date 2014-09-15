class PupilsController < ApplicationController
  before_action :set_pupil, only: [:show, :edit, :update, :destroy]

  # GET /pupils
  def index
    @pupils = Pupil.all
  end

  # GET /pupils/1
  def show
  end

  # GET /pupils/new
  def new
    @pupil = Pupil.new
  end

  # GET /pupils/1/edit
  def edit
  end

  # POST /pupils
  def create
    @pupil = Pupil.new(pupil_params)

    if @pupil.save
      redirect_to @pupil, notice: 'Pupil was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /pupils/1
  def update
    if @pupil.update(pupil_params)
      redirect_to @pupil, notice: 'Pupil was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /pupils/1
  def destroy
    @pupil.destroy
    redirect_to pupils_url, notice: 'Pupil was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil
      @pupil = Pupil.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pupil_params
      params[:pupil]
    end
end
