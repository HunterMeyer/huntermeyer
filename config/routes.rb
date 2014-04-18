Huntermeyer::Application.routes.draw do
  resources :contacts
  resources :projects

  root 'static_pages#index'

  match '/about', to: 'static_pages#about', via: 'get'
end
