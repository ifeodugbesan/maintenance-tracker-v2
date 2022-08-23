class CommentsController < ApplicationController
  before_action :find_and_authorize_comment, only: [:show, :edit, :update, :destroy]

  def new
    @task = Task.find(params[:task_id])
    @comment = Comment.new
    authorize @comment
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = Comment.create(comment_params)
    authorize @comment
    @comment.user_id = current_user.id
    @comment.task_id = @task.id
    if @comment.save
      redirect_to task_path(@task), notice: 'Comment has been posted.'
    else
      render :new, :unprocessable_entity
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment.update(comment_params)
    redirect_to task_path(@comment.task)
  end

  def destroy
    @comment.destroy
    redirect_to task_path(@comment.task), status: :see_other
  end

  private

  def find_and_authorize_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def comment_params
    params.require(:comment).permit(:content, photos: [])
  end
end
