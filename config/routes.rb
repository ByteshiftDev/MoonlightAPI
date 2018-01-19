Rails.application.routes.draw do
  resources :notifications
  resources :beacons
  resources :artworks
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :artists

  get 'artwork/search' => 'artworks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
