Rails.application.routes.draw do
  resources :books, only: [:index, :show, :update]
  resources :authors
  resources :publishers, only: [:create, :edit, :index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
