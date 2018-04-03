class DesignsController < ApplicationController
  def index
    @designs = Design.all
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.create design_params
    @design_rating = DesignRating.create :rating_value => params[:design][:design_rating]["rating_value"]
    @design.design_ratings << @design_rating
    @current_user.design_ratings << @design_rating
    redirect_to @design
  end

  def destroy
    design = Design.find params[:id]
    design.destroy
    redirect_to designs_path
  end

  def show
    @design = Design.find params[:id]
    if @design.design_ratings.present?
      @rating = @design.design_ratings.find_by(:user => @current_user).rating_value
    end
  end

  def edit
    @design = Design.find params[:id]
    @rating = @design.design_ratings.find_by(:user => @current_user).rating_value
  end

  def update
    design = Design.find params[:id]
    design.update design_params
    if design.design_ratings.find_by(:user => @current_user).present?
      rating = design.design_ratings.find_by(:user => @current_user)
      rating.update :rating_value => params[:design][:design_rating]["rating_value"]
    else
      design_rating = DesignRating.create :rating_value => params[:design][:design_rating]["rating_value"]
      design.design_ratings << design_rating
      @current_user.design_ratings << design_rating
    end
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
      redirect_to @design
    end

  def rate
    @design = Design.find params[:id]

    end
  end

private
def design_params
  params.require(:design).permit(:name, :instructions, :image, :difficulty, :creator_id, :rating_value, :rating_id, :user_id, design_ratings_attributes: [:rating_value])
end

def rating_params
  params.permit(:rating_value, :rating_id, :user_id)
end

end
