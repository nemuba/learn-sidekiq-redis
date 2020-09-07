require 'sidekiq/web'
 
Rails.application.routes.draw do
  resources :people
  root to: 'tasks#index'
  resources :tasks
  mount Sidekiq::Web => '/sidekiq'
end