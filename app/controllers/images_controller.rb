class ImagesController < ApplicationController
  before_action :project_id
  before_action :set_image, only: [:edit, :update]

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.project = @project
    if @image.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @image.update(image_params)
    redirect_to project_path(@project)
  end

  private

  def image_params
    params.require(:image).permit(:photo_url)
  end

  def project_id
    @project = Project.find(params[:project_id])
  end

  def set_image
    @image = Image.find(params[:id])
  end
end
