# == Schema Information
#
# Table name: bike_assets
#
#  id       :integer          not null, primary key
#  bike_id  :integer
#  asset_id :integer
#

class BikeAsset < ActiveRecord::Base
  belongs_to :bike
  belongs_to :asset
end
