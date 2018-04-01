class DesignsController < ApplicationController
  def index
    @designs = Design.all
  end

  def new
    @design = Design.new
  end

  def create
    design = Design.create design_params
    redirect_to design
  end

  def destroy
    design = Design.find params[:id]
    design.destroy
    redirect_to designs_path
  end

  def show
    @design = Design.find params[:id]
  end

  def edit
    @design = Design.find params[:id]
  end

  def update
    design = Design.find params[:id]
    design.update design_params
    redirect_to design
  end

  def favourite
    @design = Design.find params[:id]
    type = params[:type]
    if type == "favourite"
      @current_user.favourites << @design
      redirect_to @design
    elsif type == "unfavourite"
      @current_user.favourites.delete(@design)
    end
  end

private
def design_params
  params.require(:design).permit(:name, :instructions, :image, :difficulty, :creator_id)
end

end
