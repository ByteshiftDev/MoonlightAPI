Rails.application.routes.draw do
  resources :artworks
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
