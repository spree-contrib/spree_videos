Rails.application.routes.draw do
  # Add your extension routes here
  resources :videos
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
