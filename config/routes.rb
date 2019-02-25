Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :itineraries, only: [:index, :show] do
    resources :trips, only: [:new, :create]
  end

  resources :trips, only: [:show, :index, :edit, :update]

end
