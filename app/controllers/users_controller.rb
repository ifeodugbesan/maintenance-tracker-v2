class UsersController < ApplicationController

  def index
    @technicians = policy_scope(User).where(manager: false).page params[:page]
  end

  def dashboard
    authorize current_user

    @my_tasks = Task.where(technician: current_user).order(end_date: :asc)

    @due_tasks = Task.where(end_date: Date.today).group(:completed).count
    @due_tasks = @due_tasks.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }

    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
    @tasks_per_month = @tasks.where(completed: true).and(@tasks.where('end_date > ? AND end_date < ?', Date.new(Date.today.year, Date.today.month, 1), Date.new(Date.today.year, Date.today.month, 30))).group_by_day_of_month(:end_date).count
    @tasks = @tasks.order(end_date: :asc)
  end
end
