module Spree
  module Videos
    class Configuration
      attr_accessor :html_options,
                    :youtube_url_params

      def initialize
        self.html_options = {
          :class => 'video-player',
          :id => 'product-video',
          :frameborder => '0'
        }

        self.youtube_url_params = {
            :enablejsapi => "1",
            :theme => "light",
            :show_title => "0"
        }
      end

    end

    class << self
      attr_accessor :configuration
    end

    def self.configure
      self.configuration ||= Spree::Videos::Configuration.new
      yield configuration
    end
  end
end

# TODO move this to a more appropiate / intention revealing location
Spree::Videos.configure {}
