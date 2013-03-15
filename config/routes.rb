Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :schweine
  end

  resources :schweine, :only => [ :index, :show ]
end


