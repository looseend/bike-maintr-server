class AssetsController < ApplicationController

  before_filter :set_bike
  
  def new
    @asset = Asset.new
  end

  def create
    @bike.assets << Asset.create!(asset_params)
    redirect_to edit_user_bike_path(current_user, @bike)
  end

  def set_bike
    @bike = Bike.find params[:bike_id]
  end
  
  def asset_params
    params.require(:asset).permit(:asset_image)
  end
end
