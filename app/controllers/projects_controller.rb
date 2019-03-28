class ProjectsController < ApplicationControlle
  before_action :set_project, only: [:show, :create]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
  end

  private

  def set_projects
    @project = Project.find(:id)
  end
end
