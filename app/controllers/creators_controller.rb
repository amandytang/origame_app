class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
  end

  def new
    @creator = Creator.new
  end

  def destroy
    creator = Creator.find params[:id]
    creator.destroy
    redirect_to creators_path
  end

  def create
    @creator = Creator.create creator_params

    if params[:creator][:image].present?
      cloudinary = Cloudinary::Uploader.upload( params[:creator][:image] )
      @creator.update :image => cloudinary["url"]
    elsif params[:image_link].present?
      @creator.update :image => params[:image_link]
    end

    redirect_to @creator
  end

  def show
    @creator = Creator.find params[:id]

  end

  def edit
    @creator = Creator.find params[:id]
  end

  def update
    creator = Creator.find params[:id]
    creator.update creator_params

    if params[:creator][:image].present?
      cloudinary = Cloudinary::Uploader.upload( params[:creator][:image] )
      creator.update :image => cloudinary["url"]
    elsif params[:image_link].present?
      creator.update :image => params[:image_link]
    end

    redirect_to creator
  end

  private
  def creator_params
    params.require(:creator).permit(:name, :image, :website, :nationality)
  end
end
