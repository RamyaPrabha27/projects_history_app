class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def edit
  	@projects
  end

  def new
    @project = Project.new
  end

  def show
    @conversation_histories = @project.conversation_histories.order(created_at: :asc)
  end

  def update
    if @project.update(project_params)
      ConversationHistory.create!(user: current_user, project: @project, status: @project.status)
      redirect_to @project, notice: 'Project status updated successfully'
    else
      render :show
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  def new
    @project = Project.new
  end

  def create
    #@project = Project.new(project_params)
    @project = current_user.projects.build(project_params)
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :status)
  end
end
