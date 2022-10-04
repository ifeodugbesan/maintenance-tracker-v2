class NetworksController < ApplicationController
  before_action :find_and_authorize_network, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @networks = policy_scope(Network).search_by_name(params[:query]).page params[:page]
    else
      @networks = policy_scope(Network).page params[:page]
    end
  end

  def show
    @markers = @network.waterpoints.map do |waterpoint|
      {
        lat: waterpoint.latitude,
        lng: waterpoint.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { waterpoint: waterpoint }),
      }
    end
    @equipments = @network.waterpoints.map(&:equipments).reject(&:blank?).flatten
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
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  end

  def update
    @network.update(network_params)
    redirect_to network_path(@network)
  end

  def destroy
    @network.destroy
    redirect_to networks_path, status: :see_other
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
