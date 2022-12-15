Rails.application.routes.draw do
  root "users#show"
  resources :users, only: [:index, :show]
end
