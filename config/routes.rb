Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'vendors#index'

  resources :vendors, only: [:index]
end
