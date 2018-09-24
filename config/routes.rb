Rails.application.routes.draw do
  namespace :v1 do
    resources :cart_items
  end
end
