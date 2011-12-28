class Video < ActiveRecord::Base
  belongs_to :product
  validates_presence_of :youtube_ref
  validates_uniqueness_of :youtube_ref, :scope => [:product_id]
  
  after_validation do
    youtube_ref.match(/^.*((youtu.be\/)|(v\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/) { |m| self.youtube_ref = m[-1] }
  end
end
