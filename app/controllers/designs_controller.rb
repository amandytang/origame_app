class DesignsController < ApplicationController
  autocomplete :design, :name

  def index
    @designs = Design.all
      if params[:term]
        @designs = Design.search(params[:term])
      else
        @designs = Design.all.order("created_at ASC")
      end
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.create design_params

    if params[:design][:image].present?
      cloudinary = Cloudinary::Uploader.upload( params[:design][:image] )
      @design.update :image => cloudinary["url"]
    elsif params[:image_link].present?
      @design.update :image => params[:image_link]
    end

    if params[:design][:design_rating]["rating_value"].present?
      @design_rating = DesignRating.create :rating_value => params[:design][:design_rating]["rating_value"]

      @design.design_ratings << @design_rating
      @current_user.design_ratings << @design_rating
    end
    redirect_to @design
  end

  def destroy
    design = Design.find params[:id]
    design.destroy
    redirect_to designs_path
  end

  def show
    @design = Design.find params[:id]
    if @design.design_ratings.find_by(:user => @current_user).present?

      @rating = @design.design_ratings.find_by(:user => @current_user).rating_value
      if @rating.present?
        @blank = 5 - @rating
      else
        @blank = 5
      end
    end

    if @design.design_ratings.present?

      @average = @design.design_ratings.average :rating_value
      if @average.present?
        @blank_average = 5 - @average
      else
        @blank_average = 5
      end
    end
  end

  def edit
    @design = Design.find params[:id]
    if @design.design_ratings.find_by(:user => @current_user).present?
      @rating = @design.design_ratings.find_by(:user => @current_user).rating_value
    end
  end

  def update
    design = Design.find params[:id]

    design.update design_params

    if params[:design][:image].present?
      cloudinary = Cloudinary::Uploader.upload( params[:design][:image] )
      design.update :image => cloudinary["url"]
    elsif params[:image_link].present?
      design.update :image => params[:image_link]
    end


    if design.design_ratings.find_by(:user => @current_user).present? && params[:design][:design_rating]["rating_value"].present?
      rating = design.design_ratings.find_by(:user => @current_user)
      rating.update :rating_value => params[:design][:design_rating]["rating_value"]
    elsif design.design_ratings.find_by(:user => @current_user).nil? && params[:design][:design_rating]["rating_value"].present?
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

  end

private
def design_params
  params.require(:design).permit(:name, :instructions, :image, :difficulty, :creator_id, :term, :rating_value, :rating_id, :user_id, design_ratings_attributes: [:rating_value])
end

def rating_params
  params.permit(:rating_value, :rating_id, :user_id)
end

end
