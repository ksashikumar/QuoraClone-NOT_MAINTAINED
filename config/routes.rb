QuoraClone::Application.routes.draw do

  resources :users do
    member do
      get :following, :followers
    end
  end  
  resources :user_relationships, only: [:create, :destroy]
  resources :sessions
  resources :questions do
    resources :answers
  end
  
  get "signup" => "users#new", :as => "signup"
  get "signin" => "sessions#new", :as => "signin"

  match '/signout', to: 'sessions#destroy', via: :delete
  match '/feed', to: 'feed#show'
  match '/questions', to: 'questions#index'
  match '/ask', to: 'questions#new'

  root :to => "home#home"

end
