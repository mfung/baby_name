require 'sidekiq/web'

Rails.application.routes.draw do
  get 'top100/show'
  resources :import_data_files, only: %i[index new create]

  resources :names, only: %i[index show], param: :name
  resources :top100, only: %i[show], param: :year

  root to: 'home#index'
  mount Sidekiq::Web => '/sidekiq'
end
