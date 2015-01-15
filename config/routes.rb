Huntermeyer::Application.routes.draw do
  resources :contacts, defaults: { format: :js }

  root 'home#index'

  match '/squeak',      to: 'squeak#index',       via: 'get'
  match '/legislator',  to: 'legislator#index',   via: 'get'

end
