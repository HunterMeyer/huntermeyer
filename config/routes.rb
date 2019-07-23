# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :contacts, only: :create
  resources :home, only: :index

  get 'contact-me', controller: :contacts, action: :new
end
