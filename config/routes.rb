Huntermeyer::Application.routes.draw do
  resources :contacts, defaults: { format: :js }

  root 'home#index'

  match '/legislator',  to: 'legislator#index',   via: 'get'
  match '/musicsearch', to: 'music_search#index', via: 'get'
  match '/piglatin',    to: 'pig_latin#index',    via: 'get'
  match '/squeak',      to: 'squeak#index',       via: 'get'
end
