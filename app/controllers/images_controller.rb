class ImagesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @image = Image.new
  end

  def create
    @project = Project.find(params[:project_id])
    @image = Image.new(image_params)
    @image.project = @project
    if @image.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  private

  def image_params
    params.require(:image).permit(:photo_url)
  end
end
