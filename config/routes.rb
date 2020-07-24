Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {sessions: 'users/sessions'}
  resources :listings
  resources :organisations_profiles
  devise_for :organisations, path: 'organisations', controllers: {sessions: 'users/sessions'}
  resources :users_profiles
  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions'}
  root 'home#page'
  get 'about', to: "about#index", as: "about_page"

  get "/login/", to: "login#index", as: "login_page"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
