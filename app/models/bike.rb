# == Schema Information
#
# Table name: bikes
#
#  id           :integer          not null, primary key
#  name         :string
#  user_id      :integer
#  description  :string
#  value        :decimal(8, 2)
#  frame_number :string
#

class Bike < ActiveRecord::Base

  belongs_to :user

  has_many :bike_assets
  has_many :assets, through: :bike_assets
  
end
