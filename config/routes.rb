Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :schweine do
      collection do
        post :update_positions
      end

      resources :images, :controller => 'schweine_images' do
        collection do
          post :update_positions
        end
      end
    end

    resources :rinder do
      collection do
        post :update_positions
      end

      resources :images, :controller => 'rinder_images' do
        collection do
          post :update_positions
        end
      end
    end
  end

  resources :schweine, :only => [ :index, :show ]
  resources :rinder,   :only => [ :index, :show ]
end


