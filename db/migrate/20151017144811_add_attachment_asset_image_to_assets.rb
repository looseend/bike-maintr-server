class AddAttachmentAssetImageToAssets < ActiveRecord::Migration
  def self.up
    change_table :assets do |t|
      t.attachment :asset_image
    end
  end

  def self.down
    remove_attachment :assets, :asset_image
  end
end
