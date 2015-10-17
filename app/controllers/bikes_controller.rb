class BikesController < ApplicationController

  before_filter :set_bike, only: [:edit, :update]
  
  def new
    @bike = Bike.new(user: current_user)
  end

  def edit
  end

  def update
    @bike.update_attributes bike_params
    redirect_to root_path
  end
  
  def create
    @bike = Bike.create bike_params.merge(user: current_user)
    redirect_to root_path
  end

  def set_bike
    @bike = Bike.find params[:id]
  end
  
  def bike_params
    params.require(:bike).permit(:name, :description, :frame_number, :bike_asset)
  end
end
