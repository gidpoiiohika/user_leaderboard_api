Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  
  get '/leaderboard', to: 'leaderboard#index'
end
