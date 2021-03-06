class ImagesController < ApplicationController
  before_action :set_image, only: [:edit, :update, :destroy]
  before_action :project_id, only: [:new, :create]

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.project = @project
    if @image.save
      redirect_to project_path(@project)
      # respond_to do |format|
      #   format.html { redirect_to project_path(@project) }
      #   format.js
      # end
    else
      render 'new'
      # respond_to do |format|
      #   format.html { render 'new' }
      #   format.js
      # end
    end
  end

  def edit
  end

  def update
    @image.update(image_params)
    redirect_to project_path(@image.project)
  end

  def destroy
    @image.destroy
    redirect_to project_path(@image.project)
  end

  private

  def image_params
    params.require(:image).permit(:photo_url)
  end

  def set_image
    @image = Image.find(params[:id])
  end

  def project_id
    @project = Project.find(params[:project_id])
  end
end
