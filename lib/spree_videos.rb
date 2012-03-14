require 'spree_core'
require 'youtube_it'

module SpreeVideos
  class Engine < Rails::Engine
    engine_name 'spree_videos'
    
    config.autoload_paths += %W(#{config.root}/lib)

    config.html_options = {
      :class => 'video-player',
      :id => 'product-video',
      :frameborder => '0'
    }

    config.youtube_url_params = {
        :enablejsapi => "1",
        :theme => "light"
    }

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
