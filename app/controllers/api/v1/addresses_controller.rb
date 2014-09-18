class API::V1::AddressesController < API::V1::ApplicationController

  # GET /api/v1/addresses
  def index
    @addresses = Address.all
    render json: @addresses, root: false
  end

# GET /addresses/1
  def show
    @address = Address.find(params[:id])
    render json: @address
  end


end