Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_videos_to_products_show',
                     :insert_after => "[data-hook='product_properties']",
                     :text => %q{ <%= render :partial => 'spree/products/video', :locals => { :product => @product } %> },
                     :disabled => false)