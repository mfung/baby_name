require 'sidekiq/web'

Rails.application.routes.draw do
  resources :import_data_files, only: %i[index new create]

  resources :names, only: %i[index show], param: :name

  root to: 'home#index'
  mount Sidekiq::Web => '/sidekiq'
end
