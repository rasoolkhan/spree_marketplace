Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :supplier, only: [:index, :show] do
    get :products
  end
end
