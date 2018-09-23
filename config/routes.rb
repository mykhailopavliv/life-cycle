Rails.application.routes.draw do
  root 'v1/products#index'
  namespace :v1 do
    resources :products
  end
end