Huntermeyer::Application.routes.draw do
  resources :contacts
  resources :projects

  root 'static_pages#index'

  match '/creditcard',  to: 'credit_card#index',  via: 'get'
  match '/legislator',  to: 'legislator#index',   via: 'get'
  match '/musicsearch', to: 'music_search#index', via: 'get'
  match '/piglatin',    to: 'pig_latin#index',    via: 'get'
  match '/squeak',      to: 'squeak#index',       via: 'get'
  match '/about',       to: 'static_pages#about', via: 'get'
  match '/todo',        to: 'todo#index',         via: 'get'
  match '/triangle',    to: 'triangle#index',     via: 'get'
  match '/youtv',       to: 'youtv#index',        via: 'get'
end
