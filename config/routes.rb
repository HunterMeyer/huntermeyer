Huntermeyer::Application.routes.draw do
  resources :contacts, defaults: { format: :js }

  root 'home#index'

end
