class Video < ActiveRecord::Base
  belongs_to :product
  validates_presence_of :youtube_ref
  validates_uniqueness_of :youtube_ref, :scope => [:product_id]
end
