class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    redirect_to dashboard_path if user_signed_in?
  end

  def stats
    @task_status = Task.group(:completed).count
    @task_status = @task_status.transform_keys { |key| key == true ? "COMPLETED" : "INCOMPLETE" }

    @total_tasks_by_technician = Task.joins(:technician).group("users.first_name").count.transform_keys { |key| key.upcase }

    @total_services_by_network = Task.joins(:network).group("networks.name").count.sort_by { |_k, v| v }.reverse.first(5).to_h

    @unscheduled_services_by_manufacturer = Task.joins(:equipment).where(unscheduled: true).group("equipment.manufacturer").count

    @most_serviced_equipment = Task.joins(:equipment).group("equipment.name").count.sort_by { |_k, v| v }.reverse.first(5).to_h

    @nearest_warranty = Equipment.all.sort_by { |e| e.warranty }.first(10)

    @split_tasks_per_month = Task.group(:completed).group_by_month(:end_date).count
    @split_tasks_per_month = @split_tasks_per_month.transform_keys { |key| [key[0] == true ? "COMPLETED" : "INCOMPLETE", key[1].strftime("%b %Y")] }
  end
end
