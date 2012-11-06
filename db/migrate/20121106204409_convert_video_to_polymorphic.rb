class ConvertVideoToPolymorphic < ActiveRecord::Migration
  def up
    change_table :spree_videos do |t|
      t.references :watchable, :polymorphic => true
    end

    # convert existing video data over
    Spree::Video.all.each do |video|
      video.watchable_id = video.product_id
      video.watchable_type = 'Spree::Product'
      video.save!
    end

    remove_column :spree_videos, :product_id
  end

  def down
    remove_column :spree_videos, :watchable_type
    remove_column :spree_videos, :watchable_id
  end
end
