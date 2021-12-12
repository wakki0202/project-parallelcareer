Rails.application.routes.draw do

  
  

  resources :questions
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        invitations: 'users/invitations'
      }
    
  root "tops#index"
  get "tops/index",to:"tops#index"


  resources :providers do
    resources :introductions, only: [:create, :edit, :update]
    resources :details, only: [:create]
  end

  resources :news
  resources :questions


  get "posts/index",to:"posts#index"
  get "posts/:id",to:"posts#show"
  get "providers/:id/introductions/new", to:"introductions#new"
  get "providers/:id/introductions/edit", to:"introductions#edit"
  get "introductions/complete", to:"introductions#complete"

  get "providers/:id/details/new", to:"details#new"

  get "providers/:id/introductions", to:"introductions#index"
  get "providers/:id/introductions/:id", to:"introductions#show"




  get "introductions/index", to:"introductions#index"
  get "introductions/:id", to:"introductions#show"
  get "introductions/:id/edit", to:"introductions#edit"

  

 resources :introductions do
    resources :progresses, only: [:create, :edit, :update, :show]
  end
  get "introductions/:id/progresses",to:"progresses#new"
  get "progresses/index",to:"progresses#index"
  get "progresses/:id",to:"progresses#show"

  get "users/index",to:"users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
