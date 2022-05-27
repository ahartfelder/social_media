# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :articles do
    resources :comments, only: %i[create destroy]
  end
  resources :categories
end
