QuoraClone::Application.routes.draw do
  get "signup" => "users#new", :as => "signup"
  get "signin" => "sessions#new", :as => "signin"
  get "signout" => "sessions#destroy", :as => "signout"
  root :to => "users#new"
  resources :users
  resources :sessions
end
