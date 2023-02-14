class UsersController < ApplicationController

  def index
    @technicians = policy_scope(User).where(manager: false).order(last_name: :asc)
    @technicians = @technicians.page params[:page]
  end

  def dashboard
    authorize current_user

    @my_tasks = Task.where(technician: current_user).order(end_date: :asc)

    @due_tasks = Task.where(end_date: Date.today).group(:completed).count
    @due_tasks = @due_tasks.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }

    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
    @tasks_per_month = @tasks.where(completed: true).and(@tasks.where('end_date > ? AND end_date < ?', Date.today.beginning_of_month, Date.today.end_of_month)).group_by_day_of_month(:end_date).count
    @tasks = @tasks.order(end_date: :asc)
  end

  def user_status
    @user = User.find(params[:id])
    authorize @user
    if @user.update(active: @user.active ? false : true)
      redirect_to technicians_path
    else
      render "users/index", status: :unprocessable_entity
    end
  end
end
