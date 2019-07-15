# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :disc_golfers
  get 'welcome/index'

  resources :disc_golfers
  resources :courses do
    resources :baskets
      get 'longest_par', to: 'baskets#longest_par', as: :longest_par
    resources :visits
  end

  root 'welcome#index'
end
