class EquipmentsController < ApplicationController
  before_action :find_and_authorize_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipments = policy_scope(Equipment)
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

  def show
  end

  def edit
  end

  def update
    @equipment.update(equipment_params)
    redirect_to equipments_path
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
    params.require(:equipment).permit(:name, :equipment_type, :archived, :warranty_valid)
  end
end
