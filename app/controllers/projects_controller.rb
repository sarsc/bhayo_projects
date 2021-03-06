class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].present?
      @projects = Project.where(category: params[:category])
    else
      @projects = Project.all
    end
  end

  def show
    @image = Image.new
    if user_signed_in?
      render 'user-project-show'
    else render 'show'
    end
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

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :client, :category, :description)
  end
end
