Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#home"

  #Welcome pages
  # get "welcome/home", to: "welcome#home"
  get "about", to: "welcome#about"

  #Articles
  resources :articles

  #Users
  get "signin", to: "user#login", as: "user_signin"
  get "signup", to: "user#signup", as: "user_signup"
  post "signup", to: "user#create"
end
