Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :schweine do

      resources :images, :controller => 'schweine_images' do
        collection do
          post :update_positions
        end
      end
    end
  end

  resources :schweine, :only => [ :index, :show ]
end


