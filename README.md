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
========
You can specify configuration options that get passed through to the JS dynamic youtube video switcher & the html5 embed.

	config.after_initialize do
      SpreeVideos::Engine.config.html_options.merge!({
        :width => 400
      })

      SpreeVideos::Engine.config.youtube_url_params.merge!({
      	:enablejsapi => "1"
      })
    end

Contributors
=======
* Mark Linn, @markalinn
* Michael Bianco, @iloveitaly
* Aleksey, @alekseydem