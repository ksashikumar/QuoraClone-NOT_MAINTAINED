QuoraClone::Application.routes.draw do
  get "signup" => "users#new", :as => "signup"
  get "signin" => "sessions#new", :as => "signin"
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/feed', to: 'feed#show'
  match '/questions', to: 'questions#show'
  root :to => "home#home"
  resources :users
  resources :sessions
end
