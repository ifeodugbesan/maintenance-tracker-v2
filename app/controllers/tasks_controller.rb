
class TasksController < ApplicationController
  before_action :find_and_authorize_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = policy_scope(Task)
    @tasks = policy_scope(Task).search_by_fields(params[:query]).page params[:page] if params[:query].present?
    @tasks = @tasks.where(completed: false) if params[:hide_complete].present?
    @tasks = @tasks.where(unscheduled: true) if params[:hide_predicted].present?
    @tasks = @tasks.where(technician: current_user) unless current_user.manager
    @tasks = @tasks.order(end_date: :asc).page params[:page]
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

  def export
    @tasks = policy_scope(Task)
    authorize @tasks

    respond_to do |format|
      format.csv do
        response.headers['Content-Type'] = 'text/csv'
        response.headers['Content-Disposition'] = "attachment; filename=tasks.csv"
      end
    end
  end

  private

  def find_and_authorize_equipment
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:start_date, :end_date, :title, :extra_info, :unscheduled, :service_id, :technician_id, :waterpoint_id, :equipment_id)
  end
end
