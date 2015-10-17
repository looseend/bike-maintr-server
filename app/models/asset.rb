# == Schema Information
#
# Table name: assets
#
#  id                       :integer          not null, primary key
#  key                      :string
#  asset_image_file_name    :string
#  asset_image_content_type :string
#  asset_image_file_size    :integer
#  asset_image_updated_at   :datetime
#

class Asset < ActiveRecord::Base

  has_attached_file :asset_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :asset_image, content_type: /\Aimage\/.*\Z/
  
end
