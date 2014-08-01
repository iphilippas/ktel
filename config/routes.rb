Rails.application.routes.draw do
  root 'static_pages#dashboard'

  resources :destinations
end
