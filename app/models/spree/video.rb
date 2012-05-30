module Spree
  class Video < ActiveRecord::Base
    belongs_to :product

    attr_accessible :youtube_ref
    validates_presence_of :youtube_ref
    validates_uniqueness_of :youtube_ref, :scope => [:product_id]
  
    after_validation do
      youtube_ref.match(/(v=|\/)([\w-]+)(&.+)?$/) { |m| self.youtube_ref = m[2] }
    end
  end
end