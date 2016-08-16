RottenMangoes::Application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  get 'new/create'

  get 'sessions/new'

  get 'sessions/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'

end
