Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :create,:index,:show]
  resources :pages
  resources :page_users
  # post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/signup", to: "users#new"
  get "/myPages", to: "pages#find_all_user_pages"
end
