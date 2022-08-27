class UsersController < ApplicationController
  def dashboard
    authorize current_user

    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
    @tasks_per_month = @tasks.where(completed: true).and(@tasks.where('end_date > ? AND end_date < ?', Date.new(Date.today.year, Date.today.month, 1), Date.new(Date.today.year, Date.today.month, 30))).group_by_day_of_month(:end_date).count
  end
end
