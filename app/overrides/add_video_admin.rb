Deface::Override.new(:virtual_path => "admin/shared/_product_tabs",
                     :name => "addd_videos_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :partial => "shared/videos_product_tabs",
                     :disabled => false)
