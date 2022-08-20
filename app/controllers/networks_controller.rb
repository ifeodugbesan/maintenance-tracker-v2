class NetworksController < ApplicationController
  before_action :find_and_authorize_network, only: [:show, :edit, :update, :destroy]
  def index
    @networks = Network.all
    # @markers = @networks.geocoded.map do |network|
    #   {
    #     lat: network.latitude,
    #     lng: network.longitude
    #   }
    # end

    # @waterpoints = Waterpoint.all
    # @tasks = Task.all
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new(network_params)
    if @network.save
      redirect_to network_path(@network)
    else
      render :new
    end
  end

  def show
    @network = Network.find(params[:id])
    # @markers = [{ lat: @network.latitude, lng: @network.longitude }]
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_and_authorize_network
    @network = Network.find(params[:id])
  end

  def network_params
    params.require(:network).permit(:name, :address, :number_of_households, :max_households)
  end
end
