class TasksController < ApplicationController
  before_action :find_and_authorize_equipment, only: [:show, :edit, :update, :destroy]

  def index
    # if current_user.technician == false
    #   @tasks = Task.all
    # else
    #   @tasks = Task.where(technician: current_user)
    # end
    @tasks = policy_scope(Task)
  end

  def show
    @task = Task.find(params[:id])
    @comment = Comment.new
    @markers = [
      { lat: @task.waterpoint.latitude,
        lng: @task.waterpoint.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { waterpoint: @task.waterpoint })
      }
    ]
  end

  def new
    @task = Task.new
    authorize @task
    @technician = User.where(technician: true).all
  end

  def create
    @task = Task.new(task_params)
    authorize @task
    @task.network = Waterpoint.find(task_params[:waterpoint_id]).network
    @task.issuer = current_user
    if @task.save!
      redirect_to task_path(@task)
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  def completed
    @task = Task.find(params[:id])
    @task.update(completed: true)
    authorize @task
    redirect_to task_path(@task)
  end

  private

  def find_and_authorize_equipment
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:start_date, :end_date, :title, :extra_info, :schedule, :service_id, :technician_id, :waterpoint_id, :equipment_id)
  end
end
