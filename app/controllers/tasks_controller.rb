class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  before_action :set_project

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def edit; end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to [@project, @task], notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to [@project, @task], notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to project_tasks_url, notice: 'Task was successfully destroyed.'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :status, :deadline, :completion_date, :description).merge(project_id: params[:project_id])
  end
end
