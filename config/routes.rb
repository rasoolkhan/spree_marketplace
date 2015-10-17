Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :supplier, only: [:index, :show]
  get 'supplier/:id/products' => 'supplier#products', as: :supplier_products
end
