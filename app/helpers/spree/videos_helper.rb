module Spree
  module VideosHelper
    def video_reference(video)
      client = YouTubeIt::Client.new
      client.video_by(video.youtube_ref)
    end
  end
end