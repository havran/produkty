Rails.application.routes.draw do
  resources :products, controller: 'products/products'
  resources :documents, controller: 'documents/documents'

  root to: "products/products#index"
end
