Huntermeyer::Application.routes.draw do
  resources :contacts, defaults: { format: :js }

  root 'home#index'

  match '/squeak',      to: 'squeak#index',       via: 'get'
  match '/legislator',  to: 'legislator#index',   via: 'get'
  match '/musicsearch', to: 'music_search#index', via: 'get'
end
