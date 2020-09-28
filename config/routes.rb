require 'sidekiq/web'

Rails.application.routes.draw do
  get 'names/index'
  get 'names/show'
  resources :import_data_files, only: [:index, :new, :create]
  root to: 'home#index'
  mount Sidekiq::Web => '/sidekiq'
end
