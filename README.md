SpreeVideos
===========

Display video(s) on your product page.

* Pulls thumbnails from youtube
* Clickable thumbnails to easily switch between videos
* Versions available for Spree 0.7 & 1.0

Example
=======
In `products/show`:

	<%= render 'video', :product => @product %>

Configuration
=============
Run `rails g spree_videos:install`. Take a look at `config/initializers/spree_videos.rb`  

You can specify configuration options that get passed through to the JS dynamic youtube video switcher & the html5 embed.

	Spree::Videos.configure do |config|
	  config.html_options = {
        :width => 400
      }

      config.youtube_url_params = {
      	:enablejsapi => "1"
      }
    end

Note that as of 05/11/2012 you might have to reference a newer version of `youtube_it` in your Gemfile to get some of the newer features.

Contributors
=======
* Mark Linn, @markalinn
* Michael Bianco, @iloveitaly
* Aleksey, @alekseydem