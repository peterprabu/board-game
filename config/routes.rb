Rails.application.routes.draw do
  resources :money_managers
  resources :transactions
  resources :games
  resources :squares
  resources :players
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "games#index"

  # TODO
  # Needs to create routes path for new actions
end
