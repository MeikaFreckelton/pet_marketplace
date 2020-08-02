Rails.application.routes.draw do
  resources :locations
  devise_for :admins, path: 'admins', controllers: {sessions: 'users/sessions'}
  resources :listings
  resources :organisations_profiles
  devise_for :organisations, path: 'organisations', controllers: {sessions: 'users/sessions'}
  resources :users_profiles
  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions'}
  
  # home page
  root 'home#page'
  # home page when logged in
  get 'about', to: "about#index", as: "about_page"

  # route to determine log in options for user or organisation
  get "/login/users", to: "login#user", as: "user_login"

  get "/login/organisations", to: "login#organisation", as: "organisation_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # donate page 
  get "/donate/", to: "donate#index", as: "donate"
  
  # resources page
  get "/links/", to: "links#index", as: "links"


end




# profiles :

# orgs :
# email: email@gmail.com
# password 1-6