class ImagesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @image = Image.new
  end
  def create
    # @project = Project.find(parmams[project_id])
  end
end
