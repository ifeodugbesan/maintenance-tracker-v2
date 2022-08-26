class EquipmentsController < ApplicationController
  before_action :find_and_authorize_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipments = policy_scope(Equipment)
  end

  def show
    @markers = [
                {
                  lat: @equipment.waterpoint.latitude,
                  lng: @equipment.waterpoint.longitude,
                  info_window: render_to_string(partial: "shared/info_window", locals: { waterpoint: @equipment.waterpoint })
                }
               ]
  end

  def new
    @equipment = Equipment.new
    authorize @equipment
  end

  def create
    @equipment = Equipment.new(equipment_params)
    authorize @equipment
    if @equipment.save
      redirect_to equipments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @equipment.update(equipment_params)
    redirect_to equipment_path (@equipment)
  end

  def destroy
    @equipment.destroy
    redirect_to equipments_path, status: :see_other
  end

  private

  def find_and_authorize_equipment
    @equipment = Equipment.find(params[:id])
    authorize @equipment
  end

  def equipment_params
    params.require(:equipment).permit(:name, :date_of_installation, :date_of_expiration, :manufacturer, :inactive, :warranty, :efficiency, :equipment_type, :design_period, :waterpoint_id)
  end
end
