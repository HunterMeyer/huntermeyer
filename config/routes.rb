Huntermeyer::Application.routes.draw do
  resources :contacts, except: [ :index, :show, :edit, :update, :destroy ]
  resources :projects, except: [ :show, :edit, :update, :destroy ]

  root 'static_pages#index'

  match '/about',                to: 'static_pages#about',    via: 'get'
  match 'projects/triangle',     to: 'projects#triangle',     via: 'get'
  match 'projects/pig_latin',    to: 'projects#pig_latin',    via: 'get'
  match 'projects/youtv',        to: 'projects#youtv',        via: 'get'
  match 'projects/todo',         to: 'projects#todo',         via: 'get'
  match 'projects/legislator',   to: 'projects#legislator',   via: 'get'
  match 'projects/creditcard',   to: 'projects#creditcard',   via: 'get'
  match 'projects/music_search', to: 'projects#music_search', via: 'get'
end
