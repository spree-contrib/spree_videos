Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "addd_videos_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :partial => "spree/shared/videos_product_tabs",
                     :disabled => false)
