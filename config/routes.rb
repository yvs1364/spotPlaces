# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'spots_vtts/index'
  root to: 'pages#home'
  get 'pages/spots'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get :comfirm_email
    end
  end
  resources :spots_vtts, only: %i[index show]
end
