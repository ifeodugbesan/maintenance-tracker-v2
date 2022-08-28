class ServicesController < ApplicationController
  before_action :find_and_authorize_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = policy_scope(Service).page params[:page]
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    authorize @service
    if @service.save
      redirect_to services_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @service.update(service_params)
    redirect_to services_path
  end

  def destroy
    @service.destroy
    redirect_to services_path, status: :see_other
  end

  private

  def find_and_authorize_service
    @service = Service.find(params[:id])
    authorize @service
  end

  def service_params
    params.require(:service).permit(:name, :frequency)
  end
end
