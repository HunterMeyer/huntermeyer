# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contacts, only: [:create], defaults: { format: :js }

  root 'home#index'

  get :legislator,  to: 'legislator#index'
  get :musicsearch, to: 'music_search#index'
  get :piglatin,    to: 'pig_latin#index'
  get :squeak,      to: 'squeak#index'
end
