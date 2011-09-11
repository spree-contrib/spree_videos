class SpreeVideosHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_product_tabs, 'shared/videos_product_tabs'
end