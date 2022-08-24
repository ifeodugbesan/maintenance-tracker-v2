class UsersController < ApplicationController
  def dashboard
    authorize current_user

    @tasks = Task.all
    @complete = @tasks.where(completed: true).count
    @incomplete = @tasks.where(completed: false).count
  end
end
