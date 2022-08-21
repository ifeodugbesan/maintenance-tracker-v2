class NetworksController < ApplicationController
  before_action :find_and_authorize_network, only: [:show, :edit, :update, :destroy]
  def index
    @networks = policy_scope(Network)
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
    authorize @network
  end

  def create
    @network = Network.new(network_params)
    authorize @network
    if @network.save
      redirect_to network_path(@network)
    else
      render :new
    end
  end

  def show
    # @markers = [{ lat: @network.latitude, lng: @network.longitude }]
  end

  def edit
  end

  def update
    @network.update(network_params)
    redirect_to network_path(@network)
  end

  def destroy
    @network.destroy
    redirect_to networks_path
  end

  private

  def find_and_authorize_network
    @network = Network.find(params[:id])
    authorize @network
  end

  def network_params
    params.require(:network).permit(:name, :address, :number_of_households, :max_households)
  end
end
