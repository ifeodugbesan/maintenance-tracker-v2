class WaterpointsController < ApplicationController
  before_action :find_and_authorize_waterpoint, only: [:show, :edit, :update, :destroy]
  before_action :find_network, except: [:destroy]
  def index
    @waterpoints = network.waterpoints
  end

  def new
    @waterpoint = Waterpoint.new
    authorize @waterpoint
  end

  def create
    @waterpoint = Waterpoint.new(waterpoint_params)
    authorize @waterpoint
    @waterpoint.network = @network
    results = Geocoder.search([@waterpoint.latitude, @waterpoint.longitude])
    @waterpoint.address = results.first.address if results.first.present?
    if @waterpoint.save
      redirect_to network_path(@network)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @waterpoint.update(waterpoint_params)
    redirect_to network_path(@network)
  end

  def destroy
    @waterpoint.destroy
    redirect_to network_path(@waterpoint.network), status: :see_other
  end

  private

  def find_network
    @network = Network.find(params[:network_id])
  end

  def find_and_authorize_waterpoint
    @waterpoint = Waterpoint.find(params[:id])
    authorize @waterpoint
  end

  def waterpoint_params
    params.require(:waterpoint).permit(:name, :waterpoint_type, :latitude, :longitude)
  end
end
