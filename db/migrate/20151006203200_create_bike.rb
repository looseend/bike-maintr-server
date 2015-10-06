class CreateBike < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :key, allow_nil: false
    end
    
    create_table :bikes do |t|
      t.string :name
      t.references :user, index: true
      t.string :description
      t.decimal :value, :precision => 8, :scale => 2
      t.string :frame_number
    end

    create_table :bike_assets do |t|
      t.references :bike, allow_nil: false
      t.references :asset, allow_nil: false
    end
  end
end
