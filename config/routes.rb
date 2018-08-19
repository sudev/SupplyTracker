# frozen_string_literal: true

Rails.application.routes.draw do
  resources :inventories
  resources :shipped_items
  resources :required_items
  resources :requirements
  resources :refugees
  resources :areas
  resources :item_conditions
  resources :item_units
  resources :item_sub_types
  resources :item_types
  resources :item_categories
  resources :mode_of_transports
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, skip: [:sessions, :registrations]
  as :user do
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    delete 'logout', to: 'users/sessions#destroy', as: :destroy_user_session
    get 'register', to: 'users/registrations#new', as: :new_user_registration
    post 'register', to: 'users/registrations#create', as: :user_registration
  end
end
