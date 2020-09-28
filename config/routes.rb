require 'sidekiq/web'

Rails.application.routes.draw do
  resources :import_data_files, only: [:index, :new, :create]
  resources :names, only: [:index, :show]
  root to: 'home#index'
  mount Sidekiq::Web => '/sidekiq'
end
