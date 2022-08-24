class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    redirect_to dashboard_path if user_signed_in?
  end

  def stats
    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count

    @split_tasks_per_month = Task.group(:completed).group_by_month(:end_date).count
    p @split_tasks_per_month
    @split_tasks_per_month = @split_tasks_per_month.transform_keys { |key| [key[0] == true ? "Complete" : "Incomplete", key[1].strftime("%b %Y")] }
  end
end
