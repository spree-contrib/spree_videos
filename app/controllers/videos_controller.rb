class VideosController < Spree::BaseController
  def index
    @videos = Video.all

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
    client = YouTubeIt::Client.new(:dev_key => YouTubeITConfig.dev_key)
    @video = client.video_by(video.youtube_ref)
    respond_to do |format|
      format.html # show.html.erb
    end
  end
end
