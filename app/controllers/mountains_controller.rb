class MountainsController < ApplicationController
  def index
    @mountains = Mountain.includes(:user).order("created_at DESC")
  end

  def new
    @mountain = Mountain.new
  end

  def show
    @mountain = Mountain.find(params[:id])
    @comment = Comment.new
  end
  
end
