class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save ? (redirect_to project_path(@project)) : (render 'new')
  end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to project_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :client)
  end
end
