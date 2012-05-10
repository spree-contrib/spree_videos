module SpreeVideos
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../templates/', __FILE__)

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require store/spree_videos\n" 
      end
      
      # def add_stylesheets
      #   inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/spree_videos\n", :before => /\*\//, :verbose => true
      # end

      def copy_initializer_file
        copy_file 'spree_videos.rb', "config/initializers/spree_videos.rb"
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=spree_videos'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end
