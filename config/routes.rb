Huntermeyer::Application.routes.draw do
  resources :contacts
  resources :projects

  root 'static_pages#index'
end
