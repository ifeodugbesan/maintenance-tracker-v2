class UsersController < ApplicationController
  def dashboard
    authorize current_user

    @tasks = Task.all
    @due_tasks = Task.where(end_date: Date.today).group(:completed).count
    @due_tasks = @due_tasks.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
    @tasks_per_month = @tasks.where(completed: true).and(@tasks.where('end_date > ? AND end_date < ?', Date.new(Date.today.year, Date.today.month, 1), Date.new(Date.today.year, Date.today.month, 30))).group_by_day_of_month(:end_date).count
  end
end
