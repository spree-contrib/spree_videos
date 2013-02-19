module Spree
  module Admin
    class VideosController < ResourceController
      before_filter :load_data
      create.before :set_product
      update.before :set_product

      def update_positions
        params[:positions].each do |id, index|
          Video.update_all(['position=?', index], ['id=?', id])
        end

        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end

      private
  
      def location_after_save
        admin_product_videos_url(@product)
      end

      def load_data
        @product = Product.find_by_permalink(params[:product_id])
      end

      def set_product
        @video.watchable = @product
      end
    end
  end
end
