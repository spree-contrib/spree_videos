Rails.application.routes.draw do
  # Add your extension routes here
  resources :videos
  resources :products do
    match 'videos' => 'videos#product_index'
  end
  namespace :admin do
    resources :products do
      resources :videos do
        collection do
          post :update_positions
        end
      end
    end
  end
end
