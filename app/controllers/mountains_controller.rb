class MountainsController < ApplicationController
  def index
    @mountains = Mountain.includes(:user).order("created_at DESC")
  end

  def new
    @mountain = Mountain.new
  end

  def create
    Mountain.create(mountain_params)
    redirect_to '/'
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
  
end
