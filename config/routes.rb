Rails.application.routes.draw do
  namespace :admin do
      resources :card_generators
      resources :categories
      resources :descriptions
      resources :dungeons
      resources :dungeon_areas
      resources :dungeon_types
      resources :table_generators

      root to: "card_generators#index"
    end
  resources :dungeons
  resources :dungeon_types
  resources :dungeon_areas
  resources :card_generators
  get 'dashboard/index'
  resources :categories
  resources :table_generators
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
