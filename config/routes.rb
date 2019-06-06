# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :disc_golfers
  get 'welcome/index'

  resources :courses do
    resources :baskets, only: [:create, :destroy]
    resources :visits, only: [:new, :create, :index]
  end

  root 'welcome#index'
end
