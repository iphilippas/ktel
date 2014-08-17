Rails.application.routes.draw do
 
  root 'static_pages#dashboard'

  resources :routes
	resources :route_types
	resources :buses
  resources :destinations
  resources :assignments

  get '/assign', to: 'static_pages#assign_route', as: :assign_route
  get '/stats', to: 'stats#index', as: :stats

end
