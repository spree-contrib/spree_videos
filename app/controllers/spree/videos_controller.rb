module Spree
  class VideosController < BaseController
    def index
      @videos = Video.all(:joins => :product, :conditions => 'spree_products.deleted_at is NULL')

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def product_index
      @product = Product.find_by_permalink(params[:product_id])
      @videos = @product.videos.all(:order => 'position')

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def show
      video = Video.find(params[:id])
      client = YouTubeIt::Client.new

      # not sure why the original dev required the configuration options
      # maybe youtube_it was updated?
      # client = YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)

      @video = client.video_by(video.youtube_ref)
      respond_to do |format|
        format.html # show.html.erb
      end
    end
  end
end
