# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :disc_golfers
  get 'welcome/index'

  resources :courses

  root 'welcome#index'

  # devise_for :disc_golfers, controllers: {
  #       sessions: 'disc_golfers/sessions'
  #     }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
