Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Routes for the GamesController
  get 'new', to: 'games#new'
  post 'score', to: 'games#score'
  get "up" => "rails/health#show", as: :rails_health_check
  root 'games#new'
end
