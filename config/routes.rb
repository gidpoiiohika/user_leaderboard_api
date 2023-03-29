Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :users, only: [:index]
end
