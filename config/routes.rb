Huntermeyer::Application.routes.draw do
  resources :contacts, defaults: { format: :js }

  root 'home#index'

  match '/squeak',      to: 'squeak#index',       via: 'get'
end
