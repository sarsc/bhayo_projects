class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_project, only: [:show, :edit, :update]

  def index
    if params[:category].present?
      @projects = Project.where(category: params[:category])
    else
      @projects = Project.all
    end
  end

  def show
    if user_signed_in?
      render 'user_project_show'
    else render 'show'
    end
  end

  def new
    @project = Project.new
    @image = Image.new
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
    params.require(:project).permit(:name, :client, :category)
  end
end
