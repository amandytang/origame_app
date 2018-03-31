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
    creator = Creator.create creator_params
    redirect_to creator
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
    redirect_to creator
  end

  private
  def creator_params
    params.require(:creator).permit(:name, :image, :website, :nationality)
  end
end
