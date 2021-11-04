Rails.application.routes.draw do
  resources :games, only: %i[create show index] do
    post :play, on: :member
  end
  resources :words, only: %i[create index]

  root to: 'games#index'
end
