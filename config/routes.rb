QuoraClone::Application.routes.draw do

  resources :users
  resources :sessions
  resources :questions
  resources :answers

  get "signup" => "users#new", :as => "signup"
  get "signin" => "sessions#new", :as => "signin"

  match '/signout', to: 'sessions#destroy', via: :delete
  match '/feed', to: 'feed#show'
  match '/questions', to: 'questions#index'
  match '/ask', to: 'questions#new'

  root :to => "home#home"

end
