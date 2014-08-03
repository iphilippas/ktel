Rails.application.routes.draw do
  resources :buses

  root 'static_pages#dashboard'

  resources :destinations
end
