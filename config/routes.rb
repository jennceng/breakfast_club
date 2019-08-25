Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cereals, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :cereals, only: [:index, :show]
    end
  end
end
