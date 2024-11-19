class MountainsController < ApplicationController
  def index
    @mountains = Mountain.includes(:user).order("created_at DESC")
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = current_user.mountains.create(mountain_params)
    if @mountain.persisted?
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    mountain = Mountain.find(params[:id])
    mountain.destroy
    redirect_to root_path
  end


  def show
    @mountain = Mountain.find(params[:id])
    @comment = Comment.new
  end
  
  private

def mountain_params
  params.require(:mountain).permit(:name, :height, :location, :year_id, :month_id, :day_id, :difficulty_id, :description)
end
end
