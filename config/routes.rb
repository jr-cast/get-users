Rails.application.routes.draw do
  root "users#page1"

  get "page1" => "users#page1"
  get "page2" => "users#page2"
  get "active_users" => "users#active_users"
  get "inactive_users" => "users#inactive_users"

  resources :users, only: [:index, :show]
end
