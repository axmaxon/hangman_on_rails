Rails.application.routes.draw do
  resources :games, only: %i[create show index] do
    post :play, on: :member
  end
  resources :words, only: %i[create index destroy]

  root to: 'games#index'
end
