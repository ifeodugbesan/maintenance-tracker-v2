class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    redirect_to dashboard_path if user_signed_in?
  end

  def dashboard

    # FOR UPCOMING TASKS
    @my_tasks = Task.where(technician: current_user).order(end_date: :asc)

    @due_tasks = Task.where(end_date: Date.today).group(:completed).count
    @due_tasks = @due_tasks.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }

    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
    @tasks_per_month = @tasks.where(completed: true).and(@tasks.where('end_date > ? AND end_date < ?', Date.today.beginning_of_month, Date.today.end_of_month)).group_by_day_of_month(:end_date).count
    @tasks = @tasks.order(end_date: :asc)
    # FOR UPCOMING TASKS


    @task_status = Task.group(:completed).count
    @task_status = @task_status.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }

    @total_tasks_by_technician = Task.joins(:technician).group("users.first_name").count.transform_keys { |key| key.upcase }

    @total_services_by_network = Task.joins(:network).group("networks.name").count.sort_by { |_k, v| v }.reverse.first(10).to_h

    @unscheduled_services_by_manufacturer = Task.joins(:equipment).where(unscheduled: true).group("equipment.manufacturer").count

    @unscheduled_services_by_equipment = Task.joins(:equipment).where(unscheduled: true).group("equipment.name").count

    @most_serviced_equipment = Task.joins(:equipment).group("equipment.name").count.sort_by { |_k, v| v }.reverse.first(5).to_h

    # @nearest_warranty = Equipment.all.sort_by { |e| e.date_of_expiration }.first(10)
    @this_months_warranty = Equipment.select { |e| e.date_of_expiration.month == Date.today.month && e.date_of_expiration.year == Date.today.year }.sort_by { |e| e.date_of_expiration }.first(10)

    @split_tasks_per_month = Task.group(:completed).group_by_month(:end_date).count
    @split_tasks_per_month = @split_tasks_per_month.transform_keys { |key| [key[0] == true ? "COMPLETED" : "INCOMPLETE", key[1].strftime("%b %Y")] }
  end
end
